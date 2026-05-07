.class Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation$1;
.super Lcom/oplus/anim/value/EffectiveValueCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;->setOpacityCallback(Lcom/oplus/anim/value/EffectiveValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/anim/value/EffectiveValueCallback<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

.field public final synthetic val$callback:Lcom/oplus/anim/value/EffectiveValueCallback;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;Lcom/oplus/anim/value/EffectiveValueCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation$1;->this$0:Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation;

    iput-object p2, p0, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation$1;->val$callback:Lcom/oplus/anim/value/EffectiveValueCallback;

    invoke-direct {p0}, Lcom/oplus/anim/value/EffectiveValueCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/oplus/anim/value/EffectiveFrameInfo;)Ljava/lang/Float;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/EffectiveFrameInfo<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation$1;->val$callback:Lcom/oplus/anim/value/EffectiveValueCallback;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/value/EffectiveValueCallback;->getValue(Lcom/oplus/anim/value/EffectiveFrameInfo;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const p1, 0x40233333  # 2.55f

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue(Lcom/oplus/anim/value/EffectiveFrameInfo;)Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/oplus/anim/animation/keyframe/DropShadowKeyframeAnimation$1;->getValue(Lcom/oplus/anim/value/EffectiveFrameInfo;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
