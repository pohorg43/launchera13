.class public Lcom/android/launcher/views/BasePageItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "BasePageItemViewHolder"


# instance fields
.field private mItemCount:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .registers 3

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput p2, p0, Lcom/android/launcher/views/BasePageItemViewHolder;->mItemCount:I

    return-void
.end method


# virtual methods
.method public getItem(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_27

    check-cast v0, Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/launcher/views/BasePageItemViewHolder;->mItemCount:I

    if-ge p1, v1, :cond_11

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_11
    const-string v0, "getItem, index out of change! index = "

    const-string v1, ", mItemCount = "

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher/views/BasePageItemViewHolder;->mItemCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BasePageItemViewHolder"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method
