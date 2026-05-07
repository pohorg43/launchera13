.class public Lcom/coui/appcompat/edittext/COUICodeInputView;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/edittext/COUICodeInputView$UpdateItemWidthRunnable;,
        Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;,
        Lcom/coui/appcompat/edittext/COUICodeInputView$OnInputListener;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/widget/EditText;

.field public e:Landroid/widget/LinearLayout;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/coui/appcompat/edittext/COUICodeInputView$OnInputListener;

.field public h:Lcom/coui/appcompat/edittext/COUICodeInputView$UpdateItemWidthRunnable;

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/edittext/COUICodeInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/edittext/COUICodeInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->b:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->c:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->f:Ljava/util/List;

    new-instance v1, Lcom/coui/appcompat/edittext/COUICodeInputView$UpdateItemWidthRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/coui/appcompat/edittext/COUICodeInputView$UpdateItemWidthRunnable;-><init>(Lcom/coui/appcompat/edittext/COUICodeInputView$1;)V

    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->h:Lcom/coui/appcompat/edittext/COUICodeInputView$UpdateItemWidthRunnable;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setForceDarkAllowed(Z)V

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUICodeInputView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUICodeInputView_couiCodeInputCount:I

    const/4 v1, 0x6

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->a:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUICodeInputView_couiEnableSecurityInput:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->b:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$layout;->coui_phone_code_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_code_input_cell_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->j:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_code_input_cell_margin_horizontal:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->i:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_code_input_cell_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->k:I

    sget p2, Lcom/support/appcompat/R$id;->code_container_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->e:Landroid/widget/LinearLayout;

    move p2, v0

    :goto_72
    iget p3, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->a:I

    if-ge p2, p3, :cond_a3

    new-instance p3, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->b:Z

    invoke-virtual {p3, v1}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->setEnableSecurity(Z)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->j:I

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->i:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    iget v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->i:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->f:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_72

    :cond_a3
    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->f:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->setIsSelected(Z)V

    sget p2, Lcom/support/appcompat/R$id;->code_container_edittext:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->d:Landroid/widget/EditText;

    new-instance p2, Lcom/coui/appcompat/edittext/COUICodeInputView$1;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/edittext/COUICodeInputView$1;-><init>(Lcom/coui/appcompat/edittext/COUICodeInputView;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->d:Landroid/widget/EditText;

    new-instance p2, Lcom/coui/appcompat/edittext/COUICodeInputView$2;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/edittext/COUICodeInputView$2;-><init>(Lcom/coui/appcompat/edittext/COUICodeInputView;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->d:Landroid/widget/EditText;

    new-instance p2, Lcom/coui/appcompat/edittext/COUICodeInputView$3;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/edittext/COUICodeInputView$3;-><init>(Lcom/coui/appcompat/edittext/COUICodeInputView;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public static a(Lcom/coui/appcompat/edittext/COUICodeInputView;)V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    iget v3, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->a:I

    if-ge v2, v3, :cond_3e

    if-le v0, v2, :cond_17

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_19

    :cond_17
    const-string v3, ""

    :goto_19
    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->f:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;

    invoke-virtual {v4, v3}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->setNumber(Ljava/lang/String;)V

    iget v3, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->a:I

    const/4 v5, 0x1

    if-ne v0, v3, :cond_31

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_31

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->setIsSelected(Z)V

    goto :goto_38

    :cond_31
    if-ne v0, v2, :cond_34

    goto :goto_35

    :cond_34
    move v5, v1

    :goto_35
    invoke-virtual {v4, v5}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->setIsSelected(Z)V

    :goto_38
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_3e
    return-void
.end method

.method public static b(Lcom/coui/appcompat/edittext/COUICodeInputView;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->g:Lcom/coui/appcompat/edittext/COUICodeInputView$OnInputListener;

    if-nez v0, :cond_5

    goto :goto_1e

    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->a:I

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->g:Lcom/coui/appcompat/edittext/COUICodeInputView$OnInputListener;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICodeInputView;->getPhoneCode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/coui/appcompat/edittext/COUICodeInputView$OnInputListener;->a(Ljava/lang/String;)V

    goto :goto_1e

    :cond_19
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->g:Lcom/coui/appcompat/edittext/COUICodeInputView$OnInputListener;

    invoke-interface {p0}, Lcom/coui/appcompat/edittext/COUICodeInputView$OnInputListener;->b()V

    :goto_1e
    return-void
.end method


# virtual methods
.method public getPhoneCode()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->h:Lcom/coui/appcompat/edittext/COUICodeInputView$UpdateItemWidthRunnable;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_5c

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-double p1, p1

    const-wide p3, 0x4076800000000000L  # 360.0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    div-double/2addr p1, p3

    const/4 p3, 0x0

    :goto_1b
    iget-object p4, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p4

    if-ge p3, p4, :cond_53

    iget-object p4, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p4, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    if-nez p4, :cond_2c

    goto :goto_5c

    :cond_2c
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->j:I

    int-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    iput v0, p4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->i:I

    int-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    invoke-virtual {p4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->i:I

    int-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    invoke-virtual {p4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->k:I

    int-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    iput v0, p4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/lit8 p3, p3, 0x1

    goto :goto_1b

    :cond_53
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->h:Lcom/coui/appcompat/edittext/COUICodeInputView$UpdateItemWidthRunnable;

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->e:Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/coui/appcompat/edittext/COUICodeInputView$UpdateItemWidthRunnable;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_5c
    :goto_5c
    return-void
.end method

.method public setOnInputListener(Lcom/coui/appcompat/edittext/COUICodeInputView$OnInputListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->g:Lcom/coui/appcompat/edittext/COUICodeInputView$OnInputListener;

    return-void
.end method
