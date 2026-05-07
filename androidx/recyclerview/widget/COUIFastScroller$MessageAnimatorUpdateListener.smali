.class Landroidx/recyclerview/widget/COUIFastScroller$MessageAnimatorUpdateListener;
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
    name = "MessageAnimatorUpdateListener"
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/recyclerview/widget/COUIFastScroller;


# direct methods
.method private constructor <init>(Landroidx/recyclerview/widget/COUIFastScroller;)V
    .registers 2

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIFastScroller$MessageAnimatorUpdateListener;->this$0:Landroidx/recyclerview/widget/COUIFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/recyclerview/widget/COUIFastScroller;Landroidx/recyclerview/widget/COUIFastScroller$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIFastScroller$MessageAnimatorUpdateListener;-><init>(Landroidx/recyclerview/widget/COUIFastScroller;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller$MessageAnimatorUpdateListener;->this$0:Landroidx/recyclerview/widget/COUIFastScroller;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Landroidx/recyclerview/widget/COUIFastScroller;->access$1202(Landroidx/recyclerview/widget/COUIFastScroller;F)F

    iget-object p1, p0, Landroidx/recyclerview/widget/COUIFastScroller$MessageAnimatorUpdateListener;->this$0:Landroidx/recyclerview/widget/COUIFastScroller;

    invoke-static {p1}, Landroidx/recyclerview/widget/COUIFastScroller;->access$1200(Landroidx/recyclerview/widget/COUIFastScroller;)F

    move-result p1

    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller$MessageAnimatorUpdateListener;->this$0:Landroidx/recyclerview/widget/COUIFastScroller;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIFastScroller;->access$1300(Landroidx/recyclerview/widget/COUIFastScroller;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIFastScroller$MessageAnimatorUpdateListener;->this$0:Landroidx/recyclerview/widget/COUIFastScroller;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIFastScroller;->access$1400(Landroidx/recyclerview/widget/COUIFastScroller;)Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIFastScroller$MessageAnimatorUpdateListener;->this$0:Landroidx/recyclerview/widget/COUIFastScroller;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIFastScroller;->requestRedraw()V

    return-void
.end method
