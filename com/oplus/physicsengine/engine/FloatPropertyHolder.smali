.class public abstract Lcom/oplus/physicsengine/engine/FloatPropertyHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mIsStartValueSet:Z

.field public mPropertyName:Ljava/lang/String;

.field public mPropertyType:I

.field public mStartValue:F

.field public mValueThreshold:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->mIsStartValueSet:Z

    iput-object p1, p0, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->mPropertyName:Ljava/lang/String;

    iput p2, p0, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->mValueThreshold:F

    iput v0, p0, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->mPropertyType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->mIsStartValueSet:Z

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000  # 1.0f

    if-eq p2, v0, :cond_19

    const/4 v0, 0x2

    if-eq p2, v0, :cond_16

    const/4 v0, 0x3

    if-eq p2, v0, :cond_12

    goto :goto_19

    :cond_12
    const v1, 0x3dcccccd  # 0.1f

    goto :goto_19

    :cond_16
    const v1, 0x3b03126f  # 0.002f

    :cond_19
    :goto_19
    iput-object p1, p0, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->mPropertyName:Ljava/lang/String;

    iput p2, p0, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->mPropertyType:I

    invoke-virtual {p0, v1}, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->setValueThreshold(F)Lcom/oplus/physicsengine/engine/FloatPropertyHolder;

    return-void
.end method


# virtual methods
.method public abstract getValue(Ljava/lang/Object;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation
.end method

.method public abstract onValueSet(Ljava/lang/Object;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method

.method public setPropertyType(I)Lcom/oplus/physicsengine/engine/FloatPropertyHolder;
    .registers 2

    iput p1, p0, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->mPropertyType:I

    return-object p0
.end method

.method public setStartValue(F)Lcom/oplus/physicsengine/engine/FloatPropertyHolder;
    .registers 2

    iput p1, p0, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->mStartValue:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->mIsStartValueSet:Z

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;F)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    iget v0, p0, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->mValueThreshold:F

    mul-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->onValueSet(Ljava/lang/Object;F)V

    return-void
.end method

.method public setValueThreshold(F)Lcom/oplus/physicsengine/engine/FloatPropertyHolder;
    .registers 2

    iput p1, p0, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->mValueThreshold:F

    return-object p0
.end method

.method public update(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public verifyStartValue(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->mIsStartValueSet:Z

    if-nez v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->getValue(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->mStartValue:F

    :cond_a
    return-void
.end method
