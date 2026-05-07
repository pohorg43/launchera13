.class public Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final INTERCEPT_POSITION:I = 0x8

.field private static final SHOWN_GRIDS:F = 5.5f

.field private static final SPACE_HYPHEN:Ljava/lang/String; = " "

.field private static final STR_HYPHEN:Ljava/lang/String; = "-"

.field private static final STR_NEWLINE:Ljava/lang/String; = "\n"

.field private static final TAG:Ljava/lang/String; = "UxThemeRecyclerAdapter"


# instance fields
.field private mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDefaultMargin:I

.field private mDefaultThemes:I

.field private mFirstMargin:I

.field private mFirstMarginStart:I

.field private mIsSupportThemedIcon:Z

.field private mIsSupportUxIcon:Z

.field private mIvTheme:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

.field private mListener:La/b;

.field private mPreTheme:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

.field private mSelectPosition:I

.field private mSmallItemGap:I

.field private mStandardItemGap:I

.field private mThemeDrawable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTvTheme:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mThemeDrawable:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mThemeName:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mPreTheme:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mSelectPosition:I

    const/16 v0, 0x3f

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mFirstMarginStart:I

    const/16 v0, 0x3e

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mStandardItemGap:I

    const/16 v0, 0x2a

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mSmallItemGap:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mDefaultThemes:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mIsSupportUxIcon:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mIsSupportThemedIcon:Z

    const/16 v1, 0x48

    iput v1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mFirstMargin:I

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mDefaultMargin:I

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mThemeDrawable:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mThemeName:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/oplus/uxicon/ui/R$dimen;->ux_recycler_first_element_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mFirstMarginStart:I

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/oplus/uxicon/ui/R$dimen;->ux_recycler_standard_item_gap:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mStandardItemGap:I

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/oplus/uxicon/ui/R$dimen;->ux_recycler_small_item_gap:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mSmallItemGap:I

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/oplus/uxicon/ui/R$dimen;->first_theme_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mFirstMargin:I

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/oplus/uxicon/ui/R$dimen;->default_theme_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mDefaultMargin:I

    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->showNotSupportUxIconDialog()V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mIsSupportUxIcon:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mIsSupportThemedIcon:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->disableTouchEvent(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)La/b;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mListener:La/b;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mPreTheme:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;Lcom/oplus/uxicon/ui/ui/UxSelectableView;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mPreTheme:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mIvTheme:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;Lcom/oplus/uxicon/ui/ui/UxSelectableView;)Lcom/oplus/uxicon/ui/ui/UxSelectableView;
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mIvTheme:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mTvTheme:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$702(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mTvTheme:Landroid/widget/TextView;

    return-object p1
.end method

.method public static synthetic access$802(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;I)I
    .registers 2

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mSelectPosition:I

    return p1
.end method

.method private dealExtraLongText(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x8

    if-le p0, v0, :cond_49

    const/16 p0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p2, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBreakStrategy(I)V

    goto :goto_49

    :cond_1f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "-"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_49
    :goto_49
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private disableTouchEvent(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_14

    const-string p1, "UxThemeRecyclerAdapter"

    const-string v0, "disableTouchEvent."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_14
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mThemeDrawable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mThemeName:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p1  # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->onBindViewHolder(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;I)V
    .registers 9
    .param p1  # Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mThemeDrawable:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;->a:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    invoke-virtual {v1, v0}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mThemeName:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez p2, :cond_2a

    iget-object v1, p1, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;->b:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->dealExtraLongText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2f

    :cond_2a
    iget-object v1, p1, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2f
    invoke-virtual {p0}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mDefaultThemes:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-le v0, v1, :cond_6d

    iget-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mIsSupportThemedIcon:Z

    if-eqz v0, :cond_6d

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/oplus/uxicon/ui/R$integer;->layout_middle_proportion_item:I

    invoke-virtual {v1, v4, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x40b00000  # 5.5f

    div-float/2addr v1, v5

    float-to-int v1, v1

    invoke-direct {v4, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6d
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;

    invoke-direct {v1, p0, p2, p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$c;-><init>(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;ILcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mSelectPosition:I

    if-eq v0, v3, :cond_98

    if-ne v0, p2, :cond_98

    iget-object p2, p1, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;->a:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    iput-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mIvTheme:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    invoke-virtual {p2, v2}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->setSelected(Z)V

    iget-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mIvTheme:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->invalidate()V

    iget-object p1, p1, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;->b:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mTvTheme:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcom/oplus/uxicon/ui/R$color;->ux_txt_black:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_98
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3
    .param p1  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;
    .registers 5
    .param p1  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/oplus/uxicon/ui/R$layout;->ux_item_recycler:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;

    invoke-direct {p2, p0, p1}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$d;-><init>(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public removeOutline()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mIvTheme:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/uxicon/ui/ui/UxSelectableView;->setSelected(Z)V

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mIvTheme:Lcom/oplus/uxicon/ui/ui/UxSelectableView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_d
    return-void
.end method

.method public setIsSupportThemedIcon(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mIsSupportThemedIcon:Z

    return-void
.end method

.method public setIsSupportUxIcon(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mIsSupportUxIcon:Z

    return-void
.end method

.method public setOnThemeSelectListener(La/b;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mListener:La/b;

    return-void
.end method

.method public setThemePos(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mSelectPosition:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public showNotSupportUxIconDialog()V
    .registers 4

    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/oplus/uxicon/ui/R$string;->icon_park_theme_dialog_title:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->k(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget v1, Lcom/oplus/uxicon/ui/R$string;->icon_park_theme_dialog_message:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->d(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget v1, Lcom/oplus/uxicon/ui/R$string;->icon_park_theme_dialog_positive:I

    new-instance v2, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$b;

    invoke-direct {v2, p0}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$b;-><init>(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)V

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->i(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget v1, Lcom/oplus/uxicon/ui/R$string;->icon_park_theme_dialog_negative:I

    new-instance v2, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$a;

    invoke-direct {v2, p0}, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter$a;-><init>(Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;)V

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxThemeRecyclerAdapter;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method
