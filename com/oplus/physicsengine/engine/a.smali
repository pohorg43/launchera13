.class public final synthetic Lcom/oplus/physicsengine/engine/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:Lcom/oplus/physicsengine/engine/ChoreographerCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/physicsengine/engine/ChoreographerCompat;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/physicsengine/engine/a;->a:Lcom/oplus/physicsengine/engine/ChoreographerCompat;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/a;->a:Lcom/oplus/physicsengine/engine/ChoreographerCompat;

    invoke-static {p0, p1, p2}, Lcom/oplus/physicsengine/engine/ChoreographerCompat;->a(Lcom/oplus/physicsengine/engine/ChoreographerCompat;J)V

    return-void
.end method
