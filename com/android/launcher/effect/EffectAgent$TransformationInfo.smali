.class public Lcom/android/launcher/effect/EffectAgent$TransformationInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/effect/EffectAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransformationInfo"
.end annotation


# instance fields
.field public mAlpha:F

.field public mPivotX:F

.field public mPivotY:F

.field public mRotation:F

.field public mRotationX:F

.field public mRotationY:F

.field public mScaleX:F

.field public mScaleY:F

.field public mTranslationX:F

.field public mTranslationY:F

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mAlpha:F

    return p0
.end method

.method public getPivotX()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mPivotX:F

    return p0
.end method

.method public getPivotY()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mPivotY:F

    return p0
.end method

.method public getRotation()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mRotation:F

    return p0
.end method

.method public getRotationX()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mRotationX:F

    return p0
.end method

.method public getRotationY()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mRotationY:F

    return p0
.end method

.method public getScaleX()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mScaleX:F

    return p0
.end method

.method public getScaleY()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mScaleY:F

    return p0
.end method

.method public getTranslationX()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mTranslationX:F

    return p0
.end method

.method public getTranslationY()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mTranslationY:F

    return p0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mView:Landroid/view/View;

    return-object p0
.end method

.method public setAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mAlpha:F

    return-void
.end method

.method public setPivotX(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mPivotX:F

    return-void
.end method

.method public setPivotY(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mPivotY:F

    return-void
.end method

.method public setRotation(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mRotation:F

    return-void
.end method

.method public setRotationX(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mRotationX:F

    return-void
.end method

.method public setRotationY(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mRotationY:F

    return-void
.end method

.method public setScaleX(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mScaleX:F

    return-void
.end method

.method public setScaleY(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mScaleY:F

    return-void
.end method

.method public setTranslationX(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mTranslationX:F

    return-void
.end method

.method public setTranslationY(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mTranslationY:F

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mView:Landroid/view/View;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "mPivotX: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mPivotX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mPivotY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mPivotY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mScaleX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mScaleX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mScaleY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mScaleY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mTranslationX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mTranslationX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mTranslationY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mTranslationY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mRotationX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mRotationX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mRotationY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mRotationY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mRotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mRotation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mAlpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->mAlpha:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
