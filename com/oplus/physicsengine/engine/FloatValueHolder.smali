.class public Lcom/oplus/physicsengine/engine/FloatValueHolder;
.super Lcom/oplus/physicsengine/engine/FloatPropertyHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/physicsengine/engine/FloatPropertyHolder<",
        "Lcom/oplus/physicsengine/engine/UIItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final FLOAT_VALUE_HOLDER:Ljava/lang/String; = "floatValue"


# instance fields
.field public mValue:F


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oplus/physicsengine/engine/FloatValueHolder;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .registers 3

    const-string v0, "floatValue"

    invoke-direct {p0, v0, p1}, Lcom/oplus/physicsengine/engine/FloatValueHolder;-><init>(Ljava/lang/String;F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/physicsengine/engine/FloatValueHolder;-><init>(Ljava/lang/String;F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .registers 4

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/physicsengine/engine/FloatValueHolder;-><init>(Ljava/lang/String;FF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FF)V
    .registers 4

    invoke-direct {p0, p1, p3}, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;-><init>(Ljava/lang/String;F)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/physicsengine/engine/FloatValueHolder;->mValue:F

    iput p2, p0, Lcom/oplus/physicsengine/engine/FloatValueHolder;->mValue:F

    return-void
.end method


# virtual methods
.method public getValue(Lcom/oplus/physicsengine/engine/UIItem;)F
    .registers 2

    iget p0, p0, Lcom/oplus/physicsengine/engine/FloatValueHolder;->mValue:F

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    check-cast p1, Lcom/oplus/physicsengine/engine/UIItem;

    invoke-virtual {p0, p1}, Lcom/oplus/physicsengine/engine/FloatValueHolder;->getValue(Lcom/oplus/physicsengine/engine/UIItem;)F

    move-result p0

    return p0
.end method

.method public onValueSet(Lcom/oplus/physicsengine/engine/UIItem;F)V
    .registers 3

    iput p2, p0, Lcom/oplus/physicsengine/engine/FloatValueHolder;->mValue:F

    return-void
.end method

.method public bridge synthetic onValueSet(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/oplus/physicsengine/engine/UIItem;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/physicsengine/engine/FloatValueHolder;->onValueSet(Lcom/oplus/physicsengine/engine/UIItem;F)V

    return-void
.end method

.method public update(Lcom/oplus/physicsengine/engine/UIItem;)V
    .registers 3

    iget-object v0, p1, Lcom/oplus/physicsengine/engine/UIItem;->mTransform:Lcom/oplus/physicsengine/engine/Transform;

    iget v0, v0, Lcom/oplus/physicsengine/engine/Transform;->x:F

    invoke-virtual {p0, p1, v0}, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->setValue(Ljava/lang/Object;F)V

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/oplus/physicsengine/engine/UIItem;

    invoke-virtual {p0, p1}, Lcom/oplus/physicsengine/engine/FloatValueHolder;->update(Lcom/oplus/physicsengine/engine/UIItem;)V

    return-void
.end method

.method public verifyStartValue(Lcom/oplus/physicsengine/engine/UIItem;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->verifyStartValue(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/oplus/physicsengine/engine/UIItem;->mStartPosition:Lcom/oplus/physicsengine/common/Vector;

    iget p0, p0, Lcom/oplus/physicsengine/engine/FloatPropertyHolder;->mStartValue:F

    iput p0, p1, Lcom/oplus/physicsengine/common/Vector;->mX:F

    return-void
.end method

.method public bridge synthetic verifyStartValue(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/oplus/physicsengine/engine/UIItem;

    invoke-virtual {p0, p1}, Lcom/oplus/physicsengine/engine/FloatValueHolder;->verifyStartValue(Lcom/oplus/physicsengine/engine/UIItem;)V

    return-void
.end method
