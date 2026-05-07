.class public Lcom/coui/appcompat/searchview/COUISearchViewAnimate;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Landroidx/appcompat/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;,
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;,
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnCancelButtonClickListener;,
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;,
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnStateChangeListener;,
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AddToolBarWay;,
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchViewState;
    }
.end annotation


# static fields
.field public static final synthetic u:I


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Lcom/coui/appcompat/searchview/COUISearchView;

.field public d:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/LinearLayout;

.field public volatile g:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

.field public h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;

.field public k:J

.field public l:Landroid/view/MenuItem;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Landroid/widget/ImageView;

.field public q:Z

.field public r:Z

.field public s:I

.field public t:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiSearchViewAnimateStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v2, 0x96

    iput-wide v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->q:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->r:Z

    const/16 v2, 0x10

    iput v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->s:I

    new-instance v3, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$9;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$9;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    iput-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->t:Landroid/view/View$OnClickListener;

    sget v3, Lcom/support/appcompat/R$layout;->coui_search_view_animate_layout:I

    invoke-static {p1, v3, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v3, Lcom/support/appcompat/R$id;->animated_search_icon:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    sget v3, Lcom/support/appcompat/R$id;->animated_hint:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->b:Landroid/widget/TextView;

    sget v3, Lcom/support/appcompat/R$id;->animated_search_view:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/searchview/COUISearchView;

    iput-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    sget v3, Lcom/support/appcompat/R$id;->animated_cancel_button:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;

    iput-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;

    sget v3, Lcom/support/appcompat/R$id;->cancel_divider:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->e:Landroid/widget/ImageView;

    sget v3, Lcom/support/appcompat/R$id;->animated_hint_layout:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;

    invoke-direct {v3}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$dimen;->coui_search_view_corner:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->c(F)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$color;->coui_searchview_hint_background:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->b(I)V

    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_9e

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_9e
    sget-object v0, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/support/appcompat/R$dimen;->coui_search_view_input_text_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v3, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_inputTextSize:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v3}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v3

    int-to-float v0, v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/AutoCompleteTextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$dimen;->coui_search_view_auto_complete_padding_end:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v1, v1, v3, v1}, Landroid/widget/AutoCompleteTextView;->setPaddingRelative(IIII)V

    sget v3, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_inputTextColor:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    sget v3, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_inputHintTextColor:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    sget v0, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_couiSearchIcon:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_normalHintColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_10e

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_114

    :cond_10e
    sget v0, Lcom/support/appcompat/R$color;->coui_search_view_hint_color_selector:I

    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_114
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    const/4 v0, 0x2

    invoke-static {p1, p3, v0}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result p1

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f:Landroid/widget/LinearLayout;

    sget v3, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_normalBackground:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget p1, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_searchHint:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_148

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setQueryHint(Ljava/lang/CharSequence;)V

    :cond_148
    sget p1, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_cancelTextColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_159

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_159
    sget p1, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_cancelText:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_16b

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_172

    :cond_16b
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;

    sget v3, Lcom/support/appcompat/R$string;->coui_search_view_cancel:I

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    :goto_172
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;

    invoke-virtual {p1}, Landroid/widget/Button;->getTextSize()F

    move-result p1

    invoke-static {p1, p3, v0}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result p1

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;

    invoke-virtual {p3, v1, p1}, Landroidx/appcompat/widget/AppCompatButton;->setTextSize(IF)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;

    invoke-static {p1}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->a(Landroid/widget/TextView;)V

    sget p1, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_cancelDivider:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_199

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_199

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->e:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_199
    sget p1, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_searchBackground:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    sget p3, Lcom/support/appcompat/R$id;->search_close_btn:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->p:Landroid/widget/ImageView;

    sget p1, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_couiSearchClearSelector:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iget-object p3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->p:Landroid/widget/ImageView;

    if-eqz p3, :cond_1bd

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1bd
    sget p1, Lcom/support/appcompat/R$styleable;->COUISearchViewAnimate_android_gravity:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setGravity(I)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    return-void
.end method

.method public static a(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .registers 2

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->a(I)V

    return-void
.end method

.method public static b(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .registers 2

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->a(I)V

    return-void
.end method

.method public static c(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static d(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;II)V
    .registers 4

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->i:Ljava/util/List;

    if-eqz p0, :cond_1a

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnStateChangeListener;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1, p2}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnStateChangeListener;->a(II)V

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public static e(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;I)V
    .registers 2

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic f(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setToolBarAlpha(F)V

    return-void
.end method

.method public static g(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p0

    if-eqz p0, :cond_14

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    :cond_14
    return-void
.end method

.method private getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->g:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    if-nez v0, :cond_15

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->g:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    if-nez v0, :cond_10

    new-instance v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->g:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    :cond_10
    monitor-exit p0

    goto :goto_15

    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v0

    :cond_15
    :goto_15
    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->g:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    return-object p0
.end method

.method public static synthetic h(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setToolBarChildVisibility(I)V

    return-void
.end method

.method private setMenuItem(Landroid/view/MenuItem;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Landroid/view/MenuItem;

    if-eqz p1, :cond_10

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_10

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Landroid/view/MenuItem;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_10
    return-void
.end method

.method private setToolBarAlpha(F)V
    .registers 2

    return-void
.end method

.method private setToolBarChildVisibility(I)V
    .registers 2

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getAnimatorDuration()J
    .registers 3

    iget-wide v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k:J

    return-wide v0
.end method

.method public getCancelIconAnimating()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n:Z

    return p0
.end method

.method public getGravity()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->s:I

    return p0
.end method

.method public getInputMethodAnimationEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->r:Z

    return p0
.end method

.method public getSearchState()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getSearchView()Lcom/coui/appcompat/searchview/COUISearchView;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    return-object p0
.end method

.method public i(I)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_10

    const-string p0, "changeStateWithAnimation: same state , return. targetState = "

    const-string v0, "COUISearchViewAnimate"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_10
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_22

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->a(I)V

    goto :goto_31

    :cond_22
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_31

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->getAnimatorHelper()Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->a(I)V

    :cond_31
    :goto_31
    return-void
.end method

.method public j(Z)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    if-eqz p1, :cond_39

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p1

    if-eqz p1, :cond_2d

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    invoke-virtual {p1, v2}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    :cond_2d
    if-eqz v0, :cond_4e

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_4e

    :cond_39
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result p1

    if-eqz p1, :cond_4e

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_4e
    :goto_4e
    return-void
.end method

.method public final k(Landroid/view/View;I)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_36

    instance-of v0, p0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_36

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    and-int/lit8 p2, p2, 0x70

    const/16 v0, 0x10

    const/16 v1, 0xf

    if-eq p2, v0, :cond_30

    const/16 v0, 0x30

    if-eq p2, v0, :cond_2e

    const/16 v0, 0x50

    if-eq p2, v0, :cond_2b

    goto :goto_30

    :cond_2b
    const/16 v1, 0xc

    goto :goto_30

    :cond_2e
    const/16 v1, 0xa

    :cond_30
    :goto_30
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_36
    return-void
.end method

.method public final l()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->onWindowFocusChanged(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p0

    if-eqz p0, :cond_1d

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    :cond_1d
    return-void
.end method

.method public m()V
    .registers 5

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n:Z

    iget-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Z

    if-nez v1, :cond_e

    iput-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Z

    :cond_e
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->setToolBarChildVisibility(I)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_40

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-wide v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$4;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$4;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$5;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$5;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l()V

    iget-boolean v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->r:Z

    if-eqz v1, :cond_3f

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->j(Z)V

    :cond_3f
    return-void

    :array_40
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public onActionViewCollapsed()V
    .registers 1

    return-void
.end method

.method public onActionViewExpanded()V
    .registers 1

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f:Landroid/widget/LinearLayout;

    iget p2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->s:I

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k(Landroid/view/View;I)V

    return-void
.end method

.method public setCancelButtonBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCancelDividerImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCloseBtnBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->p:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCloseBtnImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->p:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_a
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_11
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_18
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    :cond_1f
    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;

    if-eqz p0, :cond_26

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_26
    return-void
.end method

.method public setGravity(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->s:I

    if-eq v0, p1, :cond_1b

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    or-int/lit8 p1, p1, 0x10

    :cond_14
    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->s:I

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k(Landroid/view/View;I)V

    :cond_1b
    return-void
.end method

.method public setHintTextViewHintTextColor(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHintTextColor(I)V

    return-void
.end method

.method public setHintTextViewTextColor(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setHintViewBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconCanAnimate(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o:Z

    return-void
.end method

.method public setInputHintTextColor(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    return-void
.end method

.method public setInputMethodAnimationEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->r:Z

    return-void
.end method

.method public setInputTextColor(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    return-void
.end method

.method public setOnAnimationListener(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->j:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;

    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz p0, :cond_e

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    :cond_e
    return-void
.end method

.method public setSearchViewBackgroundColor(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method

.method public setSearchViewIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
