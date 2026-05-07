.class public Lcom/oplus/physicsengine/dynamics/spring/Edge;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public next:Lcom/oplus/physicsengine/dynamics/spring/Edge;

.field public other:Lcom/oplus/physicsengine/dynamics/Body;

.field public prev:Lcom/oplus/physicsengine/dynamics/spring/Edge;

.field public spring:Lcom/oplus/physicsengine/dynamics/spring/Spring;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Edge;->other:Lcom/oplus/physicsengine/dynamics/Body;

    iput-object v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Edge;->spring:Lcom/oplus/physicsengine/dynamics/spring/Spring;

    iput-object v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Edge;->prev:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    iput-object v0, p0, Lcom/oplus/physicsengine/dynamics/spring/Edge;->next:Lcom/oplus/physicsengine/dynamics/spring/Edge;

    return-void
.end method
