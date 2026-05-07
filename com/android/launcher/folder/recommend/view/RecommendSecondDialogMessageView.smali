.class public final Lcom/android/launcher/folder/recommend/view/RecommendSecondDialogMessageView;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private mCurrentRecommendId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/view/RecommendSecondDialogMessageView;->getMessageItemView$lambda-2$lambda-1(Landroid/view/View;)V

    return-void
.end method

.method private final getMessageItemView(ILcom/android/launcher3/model/data/FolderInfo;)Landroid/view/View;
    .registers 10

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d017d

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070634

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const v2, 0x7f0a029e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v4, 0x7f0a057b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a0574

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget v6, p2, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    iget p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendSecondDialogMessageView;->mCurrentRecommendId:I

    if-ne v6, p0, :cond_63

    new-instance p0, Lcom/android/launcher/folder/recommend/view/c;

    invoke-direct {p0, v0, v3}, Lcom/android/launcher/folder/recommend/view/c;-><init>(Landroid/view/View;I)V

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_63
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v5, 0x7f120441

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object p2, v6, v3

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p0, "itemView.apply {\n       …Params = params\n        }"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final getMessageItemView$lambda-2$lambda-1(Landroid/view/View;)V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public final bindData(Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "disbandRecommendFolders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput p2, p0, Lcom/android/launcher/folder/recommend/view/RecommendSecondDialogMessageView;->mCurrentRecommendId:I

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/data/FolderInfo;

    iget v0, p2, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    packed-switch v0, :pswitch_data_4a

    goto :goto_b

    :pswitch_1d  #0x6
    const v0, 0x7f080554

    invoke-direct {p0, v0, p2}, Lcom/android/launcher/folder/recommend/view/RecommendSecondDialogMessageView;->getMessageItemView(ILcom/android/launcher3/model/data/FolderInfo;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_b

    :pswitch_28  #0x5
    const v0, 0x7f080556

    invoke-direct {p0, v0, p2}, Lcom/android/launcher/folder/recommend/view/RecommendSecondDialogMessageView;->getMessageItemView(ILcom/android/launcher3/model/data/FolderInfo;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_b

    :pswitch_33  #0x2, 0x4
    const v0, 0x7f080555

    invoke-direct {p0, v0, p2}, Lcom/android/launcher/folder/recommend/view/RecommendSecondDialogMessageView;->getMessageItemView(ILcom/android/launcher3/model/data/FolderInfo;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_b

    :pswitch_3e  #0x1, 0x3
    const v0, 0x7f080558

    invoke-direct {p0, v0, p2}, Lcom/android/launcher/folder/recommend/view/RecommendSecondDialogMessageView;->getMessageItemView(ILcom/android/launcher3/model/data/FolderInfo;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_b

    :cond_49
    return-void

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_3e  #00000001
        :pswitch_33  #00000002
        :pswitch_3e  #00000003
        :pswitch_33  #00000004
        :pswitch_28  #00000005
        :pswitch_1d  #00000006
    .end packed-switch
.end method
