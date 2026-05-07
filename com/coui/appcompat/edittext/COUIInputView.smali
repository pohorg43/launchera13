.class public Lcom/coui/appcompat/edittext/COUIInputView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/edittext/COUIInputView$ErrorStateChangeCallback;,
        Lcom/coui/appcompat/edittext/COUIInputView$OnEditTextChangeListener;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/TextView;

.field public c:Ljava/lang/CharSequence;

.field public d:Ljava/lang/CharSequence;

.field public e:Z

.field public f:I

.field public g:Z

.field public h:Lcom/coui/appcompat/edittext/COUIEditText;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/animation/ValueAnimator;

.field public l:Landroid/animation/ValueAnimator;

.field public m:Landroid/view/animation/PathInterpolator;

.field public n:Lcom/coui/appcompat/edittext/COUIInputView$ErrorStateChangeCallback;

.field public o:Landroid/widget/LinearLayout;

.field public p:Z

.field public q:I

.field public r:Landroid/graphics/Paint;

.field public s:Lcom/coui/appcompat/edittext/COUIInputView$OnEditTextChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/edittext/COUIInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/edittext/COUIInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->m:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->r:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->s:Lcom/coui/appcompat/edittext/COUIInputView$OnEditTextChangeListener;

    sget-object v0, Lcom/support/appcompat/R$styleable;->COUIInputView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    sget v0, Lcom/support/appcompat/R$styleable;->COUIInputView_couiTitle:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->d:Ljava/lang/CharSequence;

    sget v0, Lcom/support/appcompat/R$styleable;->COUIInputView_couiHint:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->c:Ljava/lang/CharSequence;

    sget v0, Lcom/support/appcompat/R$styleable;->COUIInputView_couiEnablePassword:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->e:Z

    sget v0, Lcom/support/appcompat/R$styleable;->COUIInputView_couiPasswordType:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->f:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUIInputView_couiEnableError:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Z

    sget v0, Lcom/support/appcompat/R$styleable;->COUIInputView_couiInputMaxCount:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->q:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUIInputView_couiEnableInputCount:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->p:Z

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->getLayoutResId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p3, Lcom/support/appcompat/R$id;->title:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->j:Landroid/widget/TextView;

    sget p3, Lcom/support/appcompat/R$id;->input_count:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->b:Landroid/widget/TextView;

    sget p3, Lcom/support/appcompat/R$id;->text_input_error:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->i:Landroid/widget/TextView;

    sget p3, Lcom/support/appcompat/R$id;->button_layout:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->a:Landroid/view/View;

    sget p3, Lcom/support/appcompat/R$id;->edittext_container:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/edittext/COUIInputView;->g(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/coui/appcompat/edittext/COUIEditText;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setMaxLines(I)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->o:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    const/4 p3, -0x1

    const/4 v0, -0x2

    invoke-virtual {p1, p2, p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->f()V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/edittext/COUIEditText;->setTopHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->c()V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->e()V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->d()V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->h()V

    iget-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->e:Z

    if-eqz p1, :cond_c8

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    new-instance p2, Lcom/coui/appcompat/edittext/COUIInputView$5;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/edittext/COUIInputView$5;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_c8
    return-void
.end method

.method public static a(Lcom/coui/appcompat/edittext/COUIInputView;Z)V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUIEditText;->getDeleteIconWidth()I

    move-result v0

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    iget-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->e:Z

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    :cond_22
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v1, v1, v0, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    if-eqz p1, :cond_5e

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5e

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v0

    iget-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->e:Z

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_4b

    :cond_4a
    move v2, v1

    :goto_4b
    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->getCountTextWidth()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setCompoundDrawablePadding(I)V

    goto :goto_7e

    :cond_5e
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v0

    iget-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->e:Z

    if-eqz v2, :cond_6f

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_70

    :cond_6f
    move v2, v1

    :goto_70
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->getCountTextWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result p0

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    :goto_7e
    return-void
.end method

.method public static synthetic b(Lcom/coui/appcompat/edittext/COUIInputView;)I
    .registers 1

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->getCountTextWidth()I

    move-result p0

    return p0
.end method

.method private getCountTextWidth()I
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->p:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->r:Landroid/graphics/Paint;

    if-nez v0, :cond_18

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->r:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_18
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->r:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    add-int/lit8 p0, p0, 0x8

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final c()V
    .registers 4

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->p:Z

    if-eqz v0, :cond_47

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->q:I

    if-lez v0, :cond_47

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    new-instance v1, Lcom/coui/appcompat/edittext/COUIInputView$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUIInputView$2;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    new-instance v1, Lcom/coui/appcompat/edittext/COUIInputView$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUIInputView$3;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_47
    return-void
.end method

.method public final d()V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    new-instance v1, Lcom/coui/appcompat/edittext/COUIInputView$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUIInputView$1;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    iget-object p0, v0, Lcom/coui/appcompat/edittext/COUIEditText;->p0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->n:Ljava/util/ArrayList;

    if-nez v0, :cond_1e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->n:Ljava/util/ArrayList;

    :cond_1e
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->n:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_2c
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->i:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_33
    :goto_33
    return-void
.end method

.method public final e()V
    .registers 5

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->e:Z

    if-eqz v0, :cond_32

    sget v0, Lcom/support/appcompat/R$id;->checkbox_password:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->f:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2a

    :cond_20
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    const/16 v2, 0x91

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    :goto_2a
    new-instance v1, Lcom/coui/appcompat/edittext/COUIInputView$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUIInputView$4;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_32
    return-void
.end method

.method public final f()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->d:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->j:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_15
    return-void
.end method

.method public g(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/coui/appcompat/edittext/COUIEditText;
    .registers 4

    new-instance p0, Lcom/coui/appcompat/edittext/COUIEditText;

    sget v0, Lcom/support/appcompat/R$attr;->couiInputPreferenceEditTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/edittext/COUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-object p0
.end method

.method public getCountTextView()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method public getEditText()Lcom/coui/appcompat/edittext/COUIEditText;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    return-object p0
.end method

.method public getHasTitlePaddingBottomDimen()I
    .registers 1

    sget p0, Lcom/support/appcompat/R$dimen;->coui_input_edit_text_has_title_padding_bottom:I

    return p0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getLayoutResId()I
    .registers 1

    sget p0, Lcom/support/appcompat/R$layout;->coui_input_view:I

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public h()V
    .registers 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_input_edit_text_no_title_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_input_edit_text_no_title_padding_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->d:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_62

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_input_edit_text_has_title_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->getHasTitlePaddingBottomDimen()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Z

    if-eqz v2, :cond_8f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_input_edit_text_error_padding_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->coui_input_edit_error_text_has_title_padding_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUIInputView;->i:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/coui/appcompat/edittext/COUIInputView;->i:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    goto :goto_8f

    :cond_62
    iget-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Z

    if-eqz v2, :cond_8f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_input_edit_text_error_padding_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->coui_input_edit_error_text_no_title_padding_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUIInputView;->i:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/coui/appcompat/edittext/COUIInputView;->i:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_8f
    :goto_8f
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUIInputView;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUIInputView;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    add-int/lit8 v6, v1, 0x3

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->getCountTextWidth()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0, v3, v1}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->b:Landroid/widget/TextView;

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {p0, v4, v4, v4, v1}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setEnableError(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Z

    if-eq v0, p1, :cond_c

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->g:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->d()V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->h()V

    :cond_c
    return-void
.end method

.method public setEnablePassword(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->e:Z

    if-eq v0, p1, :cond_17

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->e:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->e()V

    iget-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->e:Z

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    new-instance v0, Lcom/coui/appcompat/edittext/COUIInputView$5;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/edittext/COUIInputView$5;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_17
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->j:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setErrorStateChangeCallBack(Lcom/coui/appcompat/edittext/COUIInputView$ErrorStateChangeCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->n:Lcom/coui/appcompat/edittext/COUIInputView$ErrorStateChangeCallback;

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->c:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->h:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->setTopHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMaxCount(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->q:I

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->c()V

    return-void
.end method

.method public setOnEditTextChangeListener(Lcom/coui/appcompat/edittext/COUIInputView$OnEditTextChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->s:Lcom/coui/appcompat/edittext/COUIInputView$OnEditTextChangeListener;

    return-void
.end method

.method public setPasswordType(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->f:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->f:I

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->e()V

    :cond_9
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->d:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->f()V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->h()V

    :cond_12
    return-void
.end method
