.class public abstract Lcom/android/launcher/views/VHBasePageRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/views/VHBasePageRecyclerAdapter$OnItemLongClickListener;,
        Lcom/android/launcher/views/VHBasePageRecyclerAdapter$OnItemSelectedListener;,
        Lcom/android/launcher/views/VHBasePageRecyclerAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/launcher/views/BasePageItemViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VHBasePageRecyclerAdapter"


# instance fields
.field public DEBUG_ENABLE:Z

.field private mBrightTintColor:I

.field public mContext:Landroid/content/Context;

.field private mDarkTintColor:I

.field public mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mEmptyDataEnable:Z

.field public mInflater:Landroid/view/LayoutInflater;

.field public mItemClickListener:Lcom/android/launcher/views/VHBasePageRecyclerAdapter$OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher/views/VHBasePageRecyclerAdapter$OnItemClickListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mItemCountOnePage:I

.field public mItemLongClickListener:Lcom/android/launcher/views/VHBasePageRecyclerAdapter$OnItemLongClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher/views/VHBasePageRecyclerAdapter$OnItemLongClickListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mItemSelectedListener:Lcom/android/launcher/views/VHBasePageRecyclerAdapter$OnItemSelectedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher/views/VHBasePageRecyclerAdapter$OnItemSelectedListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mLastSelectedItemIndex:I

.field private mLastSelectedPageIndex:I

.field private mLastSelectedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->DEBUG_ENABLE:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mLastSelectedPageIndex:I

    iput v0, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mLastSelectedItemIndex:I

    iput-object p1, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mData:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mItemCountOnePage:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0606f8

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mBrightTintColor:I

    const p2, 0x7f0606f9

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mDarkTintColor:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/views/VHBasePageRecyclerAdapter;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mLastSelectedPageIndex:I

    return p0
.end method

.method public static synthetic access$002(Lcom/android/launcher/views/VHBasePageRecyclerAdapter;I)I
    .registers 2

    iput p1, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mLastSelectedPageIndex:I

    return p1
.end method

.method public static synthetic access$100(Lcom/android/launcher/views/VHBasePageRecyclerAdapter;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mLastSelectedItemIndex:I

    return p0
.end method

.method public static synthetic access$102(Lcom/android/launcher/views/VHBasePageRecyclerAdapter;I)I
    .registers 2

    iput p1, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mLastSelectedItemIndex:I

    return p1
.end method

.method public static synthetic access$200(Lcom/android/launcher/views/VHBasePageRecyclerAdapter;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mLastSelectedView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/launcher/views/VHBasePageRecyclerAdapter;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mLastSelectedView:Landroid/view/View;

    return-object p1
.end method

.method private getData(II)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->getDataSize()I

    move-result v0

    if-lez v0, :cond_1c

    iget-boolean v1, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mEmptyDataEnable:Z

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->getDataPageCount()I

    move-result v1

    rem-int/2addr p1, v1

    :cond_f
    iget v1, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mItemCountOnePage:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    if-ge p1, v0, :cond_1c

    iget-object p0, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract bindData(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation
.end method

.method public bindData(Landroid/view/View;Ljava/lang/Object;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;II)V"
        }
    .end annotation

    return-void
.end method

.method public getDataPageCount()I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mData:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2b

    iget-object v0, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mItemCountOnePage:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget p0, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mItemCountOnePage:I

    div-int/2addr v0, p0

    return v0

    :cond_20
    iget-object v0, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget p0, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mItemCountOnePage:I

    div-int/2addr v0, p0

    add-int/2addr v0, v1

    return v0

    :cond_2b
    return v1
.end method

.method public getDataSize()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mData:Ljava/util/ArrayList;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public getItemCount()I
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mItemCountOnePage:I

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget p0, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mItemCountOnePage:I

    rem-int/2addr v1, p0

    if-eqz v1, :cond_18

    add-int/lit8 v0, v0, 0x1

    :cond_18
    return v0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public abstract getItemLayoutId()I
.end method

.method public abstract getPageItemLayoutId()I
.end method

.method public abstract getSelectableView(Landroid/view/View;)Landroid/view/View;
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/android/launcher/views/BasePageItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->onBindViewHolder(Lcom/android/launcher/views/BasePageItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher/views/BasePageItemViewHolder;I)V
    .registers 10

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;

    const/4 v1, 0x0

    if-nez p2, :cond_11

    invoke-virtual {p0}, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->getDataSize()I

    move-result v2

    iget v3, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mItemCountOnePage:I

    if-gt v2, v3, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    move v2, v1

    :goto_12
    invoke-virtual {v0, v2}, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->setIgnoreInvisibleChildWhenLayout(Z)V

    move v0, v1

    :goto_16
    iget v2, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mItemCountOnePage:I

    if-ge v0, v2, :cond_90

    invoke-virtual {p1, v0}, Lcom/android/launcher/views/BasePageItemViewHolder;->getItem(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p2, v0}, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->getData(II)Ljava/lang/Object;

    move-result-object v3

    const-string v4, ". index = "

    const-string v5, "VHBasePageRecyclerAdapter"

    if-nez v2, :cond_3e

    const-string/jumbo p1, "onBindViewHolder, childView is null. pos = "

    const-string v1, ", count = "

    invoke-static {p1, p2, v4, v0, v1}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mItemCountOnePage:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3e
    if-nez v3, :cond_61

    iget-boolean v6, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mEmptyDataEnable:Z

    if-eqz v6, :cond_45

    goto :goto_61

    :cond_45
    const-string/jumbo v3, "onBindViewHolder, no data! pos = "

    const-string v6, ", size = "

    invoke-static {v3, p2, v4, v0, v6}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->getDataSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8d

    :cond_61
    :goto_61
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v4, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mEmptyDataEnable:Z

    if-eqz v4, :cond_6c

    invoke-virtual {p0, v2, v3, v0, p2}, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->bindData(Landroid/view/View;Ljava/lang/Object;II)V

    goto :goto_6f

    :cond_6c
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->bindData(Landroid/view/View;Ljava/lang/Object;)V

    :goto_6f
    iget-object v4, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mItemClickListener:Lcom/android/launcher/views/VHBasePageRecyclerAdapter$OnItemClickListener;

    if-eqz v4, :cond_7b

    new-instance v4, Lcom/android/launcher/views/VHBasePageRecyclerAdapter$1;

    invoke-direct {v4, p0, p2, v0, v3}, Lcom/android/launcher/views/VHBasePageRecyclerAdapter$1;-><init>(Lcom/android/launcher/views/VHBasePageRecyclerAdapter;IILjava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7b
    invoke-virtual {p0}, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->supportLongPressed()Z

    move-result v4

    if-eqz v4, :cond_8d

    iget-object v4, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mItemLongClickListener:Lcom/android/launcher/views/VHBasePageRecyclerAdapter$OnItemLongClickListener;

    if-eqz v4, :cond_8d

    new-instance v4, Lcom/android/launcher/views/VHBasePageRecyclerAdapter$2;

    invoke-direct {v4, p0, v3}, Lcom/android/launcher/views/VHBasePageRecyclerAdapter$2;-><init>(Lcom/android/launcher/views/VHBasePageRecyclerAdapter;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_8d
    :goto_8d
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_90
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/views/BasePageItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/views/BasePageItemViewHolder;
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->getPageItemLayoutId()I

    move-result p2

    if-eqz p2, :cond_58

    new-instance p2, Lcom/android/launcher/views/BasePageItemViewHolder;

    iget-object v0, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->getPageItemLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mItemCountOnePage:I

    invoke-direct {p2, p1, v0}, Lcom/android/launcher/views/BasePageItemViewHolder;-><init>(Landroid/view/View;I)V

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p1, p1, Lcom/android/launcher/views/VHRecyclerPageItemLayout;

    if-eqz p1, :cond_42

    invoke-virtual {p0}, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->getItemLayoutId()I

    move-result p1

    if-lez p1, :cond_39

    :goto_24
    iget p1, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mItemCountOnePage:I

    if-ge v2, p1, :cond_41

    iget-object p1, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->getItemLayoutId()I

    move-result v0

    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_39
    const-string p0, "VHBasePageRecyclerAdapter"

    const-string/jumbo p1, "onCreateViewHolder, no item layout!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    return-object p2

    :cond_42
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "page item layout must use VHRecyclerPageItemLayout! viewHolder.itemView = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_58
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "must defined a valid page item layout!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public recycle()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mLastSelectedPageIndex:I

    iput v0, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mLastSelectedItemIndex:I

    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setItemClickListener(Lcom/android/launcher/views/VHBasePageRecyclerAdapter$OnItemClickListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/views/VHBasePageRecyclerAdapter$OnItemClickListener<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mItemClickListener:Lcom/android/launcher/views/VHBasePageRecyclerAdapter$OnItemClickListener;

    return-void
.end method

.method public abstract supportLongPressed()Z
.end method
