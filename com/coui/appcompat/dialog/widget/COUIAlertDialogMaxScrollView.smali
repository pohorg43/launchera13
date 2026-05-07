.class public Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;
.super Landroid/widget/ScrollView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView$OnSizeChangeListener;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView$OnSizeChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/support/appcompat/R$styleable;->COUIAlertDialogMaxLinearLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$styleable;->COUIAlertDialogMaxLinearLayout_maxWidth:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;->a:I

    sget p2, Lcom/support/appcompat/R$styleable;->COUIAlertDialogMaxLinearLayout_maxHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;->b:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getMaxWidth()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;->a:I

    return p0
.end method

.method public onMeasure(II)V
    .registers 8

    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;->a:I

    const/high16 v3, 0x40000000  # 2.0f

    const/4 v4, 0x1

    if-eqz v2, :cond_1a

    if-le v0, v2, :cond_1a

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    move v0, v4

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    iget v2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;->b:I

    if-le v1, v2, :cond_24

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_25

    :cond_24
    move v4, v0

    :goto_25
    if-eqz v4, :cond_2a

    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    :cond_2a
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;->c:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView$OnSizeChangeListener;

    if-eqz p0, :cond_a

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView$OnSizeChangeListener;->a(IIII)V

    :cond_a
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;->a:I

    return-void
.end method

.method public setOnSizeChangeListener(Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView$OnSizeChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;->c:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView$OnSizeChangeListener;

    return-void
.end method
