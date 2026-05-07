.class public abstract Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$OnItemClickListener;,
        Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "VHBaseNoPageRecyclerAdapter"


# instance fields
.field public mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mInflater:Landroid/view/LayoutInflater;

.field public mItemClickListener:Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$OnItemClickListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;->mData:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;I)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;->getData(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getData(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract bindData(Landroid/view/View;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;I)V"
        }
    .end annotation
.end method

.method public getItemCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;->mData:Ljava/util/ArrayList;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public abstract getItemLayoutId()I
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p1  # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;->onBindViewHolder(Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$ItemViewHolder;I)V
    .registers 5
    .param p1  # Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$ItemViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;->getData(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;->bindData(Landroid/view/View;Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;->mItemClickListener:Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$OnItemClickListener;

    if-eqz v0, :cond_17

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$1;-><init>(Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$ItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$ItemViewHolder;
    .registers 5
    .param p1  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$ItemViewHolder;

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;->getItemLayoutId()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setItemClickListener(Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$OnItemClickListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$OnItemClickListener<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;->mItemClickListener:Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$OnItemClickListener;

    return-void
.end method
