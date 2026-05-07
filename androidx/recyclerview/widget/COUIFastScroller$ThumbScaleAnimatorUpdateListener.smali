.class Landroidx/recyclerview/widget/COUIFastScroller$ThumbScaleAnimatorUpdateListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/COUIFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThumbScaleAnimatorUpdateListener"
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/recyclerview/widget/COUIFastScroller;


# direct methods
.method private constructor <init>(Landroidx/recyclerview/widget/COUIFastScroller;)V
    .registers 2

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIFastScroller$ThumbScaleAnimatorUpdateListener;->this$0:Landroidx/recyclerview/widget/COUIFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/recyclerview/widget/COUIFastScroller;Landroidx/recyclerview/widget/COUIFastScroller$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIFastScroller$ThumbScaleAnimatorUpdateListener;-><init>(Landroidx/recyclerview/widget/COUIFastScroller;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller$ThumbScaleAnimatorUpdateListener;->this$0:Landroidx/recyclerview/widget/COUIFastScroller;

    const-string v1, "HEIGHT_ANIM_HOLDER"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/COUIFastScroller;->access$702(Landroidx/recyclerview/widget/COUIFastScroller;F)F

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller$ThumbScaleAnimatorUpdateListener;->this$0:Landroidx/recyclerview/widget/COUIFastScroller;

    const-string v1, "WIDTH_ANIM_HOLDER"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/COUIFastScroller;->access$802(Landroidx/recyclerview/widget/COUIFastScroller;F)F

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller$ThumbScaleAnimatorUpdateListener;->this$0:Landroidx/recyclerview/widget/COUIFastScroller;

    const-string v1, "THUMB_TRANSLATE_X_HOLDER"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Landroidx/recyclerview/widget/COUIFastScroller;->access$902(Landroidx/recyclerview/widget/COUIFastScroller;F)F

    iget-object p1, p0, Landroidx/recyclerview/widget/COUIFastScroller$ThumbScaleAnimatorUpdateListener;->this$0:Landroidx/recyclerview/widget/COUIFastScroller;

    invoke-static {p1}, Landroidx/recyclerview/widget/COUIFastScroller;->access$900(Landroidx/recyclerview/widget/COUIFastScroller;)F

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIFastScroller$ThumbScaleAnimatorUpdateListener;->this$0:Landroidx/recyclerview/widget/COUIFastScroller;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIFastScroller;->access$1100(Landroidx/recyclerview/widget/COUIFastScroller;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {p1, v0}, Landroidx/recyclerview/widget/COUIFastScroller;->access$1002(Landroidx/recyclerview/widget/COUIFastScroller;F)F

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller$ThumbScaleAnimatorUpdateListener;->this$0:Landroidx/recyclerview/widget/COUIFastScroller;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->requestRedraw()V

    return-void
.end method
