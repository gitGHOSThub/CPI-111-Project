{
  "$GMObject":"",
  "%Name":"obj_player",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":4,"eventType":6,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_abstractenemy","path":"objects/obj_abstractenemy/obj_abstractenemy.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":10,"eventType":7,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":5,"eventType":6,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_enemyprojectile","path":"objects/obj_enemyprojectile/obj_enemyprojectile.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":10,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_player",
  "overriddenProperties":[],
  "parent":{
    "name":"Player",
    "path":"folders/Objects/Entity/Player.yy",
  },
  "parentObjectId":null,
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"shoot_angle","filters":[],"listItems":[],"multiselect":false,"name":"shoot_angle","rangeEnabled":true,"rangeMax":360.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"360","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"xVel","filters":[],"listItems":[],"multiselect":false,"name":"xVel","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"yVel","filters":[],"listItems":[],"multiselect":false,"name":"yVel","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"shoot_cd","filters":[],"listItems":[],"multiselect":false,"name":"shoot_cd","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0.6","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"baseWalkSpeed","filters":[],"listItems":[],"multiselect":false,"name":"baseWalkSpeed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"500","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"walkSpeedModifier","filters":[],"listItems":[],"multiselect":false,"name":"walkSpeedModifier","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"1","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"curr_shoot_cd","filters":[],"listItems":[],"multiselect":false,"name":"curr_shoot_cd","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"curr_ability_cd","filters":[],"listItems":[],"multiselect":false,"name":"curr_ability_cd","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"health","filters":[],"listItems":[],"multiselect":false,"name":"health","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"maxhealth","filters":[],"listItems":[],"multiselect":false,"name":"maxhealth","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"10","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"attack","filters":[],"listItems":[],"multiselect":false,"name":"attack","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"speed","filters":[],"listItems":[],"multiselect":false,"name":"speed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"defense","filters":[],"listItems":[],"multiselect":false,"name":"defense","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"level","filters":[],"listItems":[],"multiselect":false,"name":"level","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"xp","filters":[],"listItems":[],"multiselect":false,"name":"xp","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"iframes","filters":[],"listItems":[],"multiselect":false,"name":"iframes","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"20","varType":0,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_spaceship",
    "path":"sprites/spr_spaceship/spr_spaceship.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}