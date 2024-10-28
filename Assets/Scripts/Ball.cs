using System.Collections;
using System.Collections.Generic;
using Unity.Mathematics;
using Unity.VisualScripting.ReorderableList;
using UnityEngine;

public class Ball : MonoBehaviour
{
    [SerializeField]
    private float speed = 50;
    private Rigidbody2D rb;
    private Vector2 actualDirection;
    void Start()
    {
        actualDirection = new Vector2(1,1) * speed;
        rb = GetComponent<Rigidbody2D>();
        rb.AddForce(actualDirection);
    }

    void OnCollisionEnter2D(Collision2D collision) {
        Vector2 newDirection = changeDirection(actualDirection, collision.transform.tag);
        actualDirection = newDirection;


        rb.velocity = Vector2.zero;
        Debug.Log(newDirection);
        rb.AddForce(newDirection * speed);
    }

    private Vector2 changeDirection(Vector2 vectorToChange, string tag){
        float x = vectorToChange.x / math.abs(vectorToChange.x);
        float y = vectorToChange.y / math.abs(vectorToChange.y);
        Vector2 newVector = Vector2.zero;

        if(tag == "Pared"){
            newVector = new Vector2(-x, y);
        }else if(tag == "Piso"){
            newVector = new Vector2(x, -y); 
        }
        return newVector;
        
    }
}
