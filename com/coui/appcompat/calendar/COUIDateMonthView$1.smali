.class Lcom/coui/appcompat/calendar/COUIDateMonthView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/calendar/COUIDateMonthView;->configAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/coui/appcompat/calendar/COUIDateMonthView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/calendar/COUIDateMonthView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$1;->this$0:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$1;->this$0:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    invoke-static {v0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->access$000(Lcom/coui/appcompat/calendar/COUIDateMonthView;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x437f0000  # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$1;->this$0:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    invoke-static {v0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->access$200(Lcom/coui/appcompat/calendar/COUIDateMonthView;)F

    move-result v1

    const v2, 0x3f4ccccd  # 0.8f

    mul-float/2addr v1, v2

    const v2, 0x3e4ccccd  # 0.2f

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$1;->this$0:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    invoke-static {v3}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->access$200(Lcom/coui/appcompat/calendar/COUIDateMonthView;)F

    move-result v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    invoke-static {v0, v3}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->access$102(Lcom/coui/appcompat/calendar/COUIDateMonthView;F)F

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$1;->this$0:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3b

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$1;->this$0:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->access$302(Lcom/coui/appcompat/calendar/COUIDateMonthView;Z)Z

    :cond_3b
    return-void
.end method
