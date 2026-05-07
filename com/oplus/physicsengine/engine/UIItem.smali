.class public Lcom/oplus/physicsengine/engine/UIItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mHeight:F

.field public final mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

.field public final mStartPosition:Lcom/oplus/physicsengine/common/Vector;

.field public final mStartScale:Lcom/oplus/physicsengine/common/Vector;

.field public final mStartVelocity:Lcom/oplus/physicsengine/common/Vector;

.field public mTarget:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final mTransform:Lcom/oplus/physicsengine/engine/Transform;

.field public mWidth:F


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oplus/physicsengine/engine/UIItem;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/physicsengine/engine/UIItem;->mWidth:F

    iput v0, p0, Lcom/oplus/physicsengine/engine/UIItem;->mHeight:F

    new-instance v0, Lcom/oplus/physicsengine/common/Vector;

    invoke-direct {v0}, Lcom/oplus/physicsengine/common/Vector;-><init>()V

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/UIItem;->mMoveTarget:Lcom/oplus/physicsengine/common/Vector;

    new-instance v0, Lcom/oplus/physicsengine/common/Vector;

    invoke-direct {v0}, Lcom/oplus/physicsengine/common/Vector;-><init>()V

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/UIItem;->mStartPosition:Lcom/oplus/physicsengine/common/Vector;

    new-instance v0, Lcom/oplus/physicsengine/common/Vector;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1}, Lcom/oplus/physicsengine/common/Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/UIItem;->mStartScale:Lcom/oplus/physicsengine/common/Vector;

    new-instance v0, Lcom/oplus/physicsengine/common/Vector;

    invoke-direct {v0}, Lcom/oplus/physicsengine/common/Vector;-><init>()V

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/UIItem;->mStartVelocity:Lcom/oplus/physicsengine/common/Vector;

    new-instance v0, Lcom/oplus/physicsengine/engine/Transform;

    invoke-direct {v0}, Lcom/oplus/physicsengine/engine/Transform;-><init>()V

    iput-object v0, p0, Lcom/oplus/physicsengine/engine/UIItem;->mTransform:Lcom/oplus/physicsengine/engine/Transform;

    iput-object p1, p0, Lcom/oplus/physicsengine/engine/UIItem;->mTarget:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getTransform()Lcom/oplus/physicsengine/engine/Transform;
    .registers 1

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/UIItem;->mTransform:Lcom/oplus/physicsengine/engine/Transform;

    return-object p0
.end method

.method public setSize(FF)Lcom/oplus/physicsengine/engine/UIItem;
    .registers 3

    iput p1, p0, Lcom/oplus/physicsengine/engine/UIItem;->mWidth:F

    iput p2, p0, Lcom/oplus/physicsengine/engine/UIItem;->mHeight:F

    return-object p0
.end method

.method public setStartPosition(FF)Lcom/oplus/physicsengine/engine/UIItem;
    .registers 4

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/UIItem;->mStartPosition:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/physicsengine/common/Vector;->set(FF)Lcom/oplus/physicsengine/common/Vector;

    return-object p0
.end method

.method public setStartScale(FF)Lcom/oplus/physicsengine/engine/UIItem;
    .registers 4

    iget-object v0, p0, Lcom/oplus/physicsengine/engine/UIItem;->mStartScale:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/physicsengine/common/Vector;->set(FF)Lcom/oplus/physicsengine/common/Vector;

    return-object p0
.end method

.method public setStartVelocity(FF)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/UIItem;->mStartVelocity:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/physicsengine/common/Vector;->set(FF)Lcom/oplus/physicsengine/common/Vector;

    return-void
.end method

.method public setTransformPosition(FF)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/UIItem;->mTransform:Lcom/oplus/physicsengine/engine/Transform;

    iput p1, p0, Lcom/oplus/physicsengine/engine/Transform;->x:F

    iput p2, p0, Lcom/oplus/physicsengine/engine/Transform;->y:F

    return-void
.end method

.method public setTransformScale(F)V
    .registers 2

    invoke-virtual {p0, p1, p1}, Lcom/oplus/physicsengine/engine/UIItem;->setTransformScale(FF)V

    return-void
.end method

.method public setTransformScale(FF)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/physicsengine/engine/UIItem;->mTransform:Lcom/oplus/physicsengine/engine/Transform;

    iput p1, p0, Lcom/oplus/physicsengine/engine/Transform;->scaleX:F

    iput p2, p0, Lcom/oplus/physicsengine/engine/Transform;->scaleY:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "UIItem{, mTarget="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/UIItem;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size=( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/physicsengine/engine/UIItem;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/physicsengine/engine/UIItem;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "), startPos =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/UIItem;->mStartPosition:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startVel =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/physicsengine/engine/UIItem;->mStartVelocity:Lcom/oplus/physicsengine/common/Vector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
