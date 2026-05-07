.class public final Lcom/android/launcher/guide/side/GuideLearningViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;,
        Lcom/android/launcher/guide/side/GuideLearningViewAdapter$OnRecycleItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageIds:[I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnItemClickListener:Lcom/android/launcher/guide/side/GuideLearningViewAdapter$OnRecycleItemClickListener;

.field private mTitleIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_2e

    iput-object v1, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->mImageIds:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3a

    iput-object v0, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->mTitleIds:[I

    iput-object p1, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void

    nop

    :array_2e
    .array-data 4
        0x7f080568
        0x7f080569
        0x7f08056a
        0x7f08056b
    .end array-data

    :array_3a
    .array-data 4
        0x7f120499
        0x7f12049c
        0x7f120235
        0x7f1204ad
    .end array-data
.end method

.method public static synthetic a(Lcom/android/launcher/guide/side/GuideLearningViewAdapter;ILandroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->onBindViewHolder$lambda-0(Lcom/android/launcher/guide/side/GuideLearningViewAdapter;ILandroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda-0(Lcom/android/launcher/guide/side/GuideLearningViewAdapter;ILandroid/view/View;)V
    .registers 3

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->mOnItemClickListener:Lcom/android/launcher/guide/side/GuideLearningViewAdapter$OnRecycleItemClickListener;

    if-nez p0, :cond_b

    goto :goto_e

    :cond_b
    invoke-interface {p0, p1}, Lcom/android/launcher/guide/side/GuideLearningViewAdapter$OnRecycleItemClickListener;->onClick(I)V

    :goto_e
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->mImageIds:[I

    array-length p0, p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->onBindViewHolder(Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;I)V
    .registers 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;->getMImg()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_13

    :cond_c
    iget-object v1, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->mImageIds:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_13
    invoke-virtual {p1}, Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;->getMTxt()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_21

    :cond_1a
    iget-object v1, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->mTitleIds:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_21
    invoke-virtual {p1}, Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;->getMImg()Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_28

    goto :goto_30

    :cond_28
    new-instance v0, Lcom/android/launcher/guide/side/a;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher/guide/side/a;-><init>(Lcom/android/launcher/guide/side/GuideLearningViewAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_30
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;
    .registers 5

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 p2, 0x0

    if-nez p0, :cond_d

    move-object p0, p2

    goto :goto_15

    :cond_d
    const v0, 0x7f0d00fd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    :goto_15
    new-instance p1, Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    if-nez p0, :cond_1d

    goto :goto_24

    :cond_1d
    const p2, 0x7f0a02b4

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    :goto_24
    const-string/jumbo v0, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;->setMImg(Landroid/widget/ImageView;)V

    const p2, 0x7f0a0546

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string/jumbo p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {p0, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;->setMTxt(Landroid/widget/TextView;)V

    return-object p1
.end method

.method public final setOnItemClickListener(Lcom/android/launcher/guide/side/GuideLearningViewAdapter$OnRecycleItemClickListener;)V
    .registers 3

    const-string/jumbo v0, "onItemClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->mOnItemClickListener:Lcom/android/launcher/guide/side/GuideLearningViewAdapter$OnRecycleItemClickListener;

    return-void
.end method
