.class Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tablayout/COUITabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabView"
.end annotation


# instance fields
.field public a:Lcom/coui/appcompat/tablayout/COUITabLayout$Tab;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field public d:Lcom/coui/appcompat/reddot/COUIHintRedDot;

.field public e:I

.field public f:Z

.field public final synthetic g:Lcom/coui/appcompat/tablayout/COUITabLayout;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/tablayout/COUITabLayout;Landroid/content/Context;)V
    .registers 6

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->g:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->e:I

    iget v1, p1, Lcom/coui/appcompat/tablayout/COUITabLayout;->L:I

    if-eqz v1, :cond_21

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget v1, p1, Lcom/coui/appcompat/tablayout/COUITabLayout;->L:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {p2, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_21
    iget p2, p1, Lcom/coui/appcompat/tablayout/COUITabLayout;->R:I

    iget v1, p1, Lcom/coui/appcompat/tablayout/COUITabLayout;->S:I

    iget v2, p1, Lcom/coui/appcompat/tablayout/COUITabLayout;->T:I

    iget p1, p1, Lcom/coui/appcompat/tablayout/COUITabLayout;->U:I

    invoke-static {p0, p2, v1, v2, p1}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->a:Lcom/coui/appcompat/tablayout/COUITabLayout$Tab;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->c:Landroid/widget/ImageView;

    if-nez v3, :cond_1d

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$layout;->coui_tab_layout_icon:I

    invoke-virtual {v3, v4, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iput-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->c:Landroid/widget/ImageView;

    :cond_1d
    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->b:Landroid/widget/TextView;

    if-nez v3, :cond_57

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$layout;->coui_tab_layout_text:I

    invoke-virtual {v3, v4, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->b:Landroid/widget/TextView;

    invoke-static {v3}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->e:I

    if-eqz v3, :cond_57

    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->a()I

    move-result v4

    const/16 v5, 0xc

    if-ge v4, v5, :cond_4e

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_57

    :cond_4e
    const-string v4, "sans-serif-medium"

    invoke-static {v4, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_57
    :goto_57
    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->d:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v3, :cond_5e

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_5e
    new-instance v3, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/coui/appcompat/reddot/COUIHintRedDot;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->d:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->d:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->d:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->g:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v4, v4, Lcom/coui/appcompat/tablayout/COUITabLayout;->W:F

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->g:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v4, v4, Lcom/coui/appcompat/tablayout/COUITabLayout;->a0:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->g:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v3, v3, Lcom/coui/appcompat/tablayout/COUITabLayout;->V:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_96

    iget-object v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_96
    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v4}, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->b(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    if-eqz v0, :cond_b9

    iget-object v3, v0, Lcom/coui/appcompat/tablayout/COUITabLayout$Tab;->a:Lcom/coui/appcompat/tablayout/COUITabLayout;

    if-eqz v3, :cond_b1

    invoke-virtual {v3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result v3

    iget v0, v0, Lcom/coui/appcompat/tablayout/COUITabLayout$Tab;->f:I

    if-ne v3, v0, :cond_ad

    move v0, v1

    goto :goto_ae

    :cond_ad
    move v0, v2

    :goto_ae
    if-eqz v0, :cond_b9

    goto :goto_ba

    :cond_b1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b9
    move v1, v2

    :goto_ba
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->setSelected(Z)V

    return-void
.end method

.method public final b(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .registers 10
    .param p1  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->a:Lcom/coui/appcompat/tablayout/COUITabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v2, v0, Lcom/coui/appcompat/tablayout/COUITabLayout$Tab;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_9

    :cond_8
    move-object v2, v1

    :goto_9
    if-eqz v0, :cond_e

    iget-object v3, v0, Lcom/coui/appcompat/tablayout/COUITabLayout$Tab;->d:Ljava/lang/CharSequence;

    goto :goto_f

    :cond_e
    move-object v3, v1

    :goto_f
    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/coui/appcompat/tablayout/COUITabLayout$Tab;->e:Ljava/lang/CharSequence;

    goto :goto_15

    :cond_14
    move-object v0, v1

    :goto_15
    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz p2, :cond_2f

    if-eqz v2, :cond_26

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2c

    :cond_26
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2c
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2f
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz p1, :cond_60

    if-eqz v2, :cond_57

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->g:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-boolean v6, v3, Lcom/coui/appcompat/tablayout/COUITabLayout;->w0:Z

    if-eqz v6, :cond_4e

    iget-object v6, v3, Lcom/coui/appcompat/tablayout/COUITabLayout;->I:Lcom/coui/appcompat/tablayout/COUITabLayout$SlidingTabStrip;

    if-eqz v6, :cond_4e

    iput-boolean v5, v3, Lcom/coui/appcompat/tablayout/COUITabLayout;->w0:Z

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_4e
    iget v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->e:I

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5d

    :cond_57
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5d
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_60
    if-eqz p2, :cond_7f

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_76

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_76

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->g:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/tablayout/COUITabLayout;->o(I)I

    move-result v5

    :cond_76
    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v5, v3, :cond_7f

    iput v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    :cond_7f
    if-eqz v2, :cond_82

    goto :goto_83

    :cond_82
    move-object v1, v0

    :goto_83
    invoke-static {p0, v1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p0, Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class p0, Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 8

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->d:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2a

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->d:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->getPointMode()I

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->d:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_2a
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->g:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v0, v0, Lcom/coui/appcompat/tablayout/COUITabLayout;->Q:Lcom/coui/appcompat/tablayout/COUITabLayout$Tab;

    if-eqz v0, :cond_1d

    iget-object v0, v0, Lcom/coui/appcompat/tablayout/COUITabLayout$Tab;->b:Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;

    if-eq v0, p0, :cond_1d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->g:Lcom/coui/appcompat/tablayout/COUITabLayout;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->performHapticFeedback(I)Z

    :cond_1d
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public performClick()Z
    .registers 4

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->a:Lcom/coui/appcompat/tablayout/COUITabLayout$Tab;

    if-eqz v1, :cond_1c

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    :cond_e
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->g:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iput-boolean v1, v0, Lcom/coui/appcompat/tablayout/COUITabLayout;->x0:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->f:Z

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->a:Lcom/coui/appcompat/tablayout/COUITabLayout$Tab;

    invoke-virtual {v2}, Lcom/coui/appcompat/tablayout/COUITabLayout$Tab;->a()V

    iput-boolean v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->f:Z

    :cond_1c
    return v0
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_a
    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->c:Landroid/widget/ImageView;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_11
    return-void
.end method

.method public setSelected(Z)V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_23

    if-eqz p1, :cond_1c

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->g:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout;->a0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_23

    :cond_1c
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->g:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout;->b0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->g:Lcom/coui/appcompat/tablayout/COUITabLayout;

    sget-object v1, Lcom/coui/appcompat/tablayout/COUITabLayout;->B0:Landroidx/core/util/Pools$Pool;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_33

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    :cond_33
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_3a

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_3a
    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabView;->c:Landroid/widget/ImageView;

    if-eqz p0, :cond_41

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_41
    return-void
.end method
