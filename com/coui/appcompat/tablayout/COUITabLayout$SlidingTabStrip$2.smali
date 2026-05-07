.class Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;I)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$2;->b:Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;

    iput p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$2;->a:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$2;->b:Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$2;->a:I

    iput v0, p1, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->d:I

    const/4 v0, 0x0

    iput v0, p1, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->e:F

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->j()V

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip$2;->b:Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;->r:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->I:Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_17
    if-ge v0, p1, :cond_2f

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->I:Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;

    if-eqz v2, :cond_2c

    check-cast v1, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;

    iget-object v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->V:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2f
    return-void
.end method
