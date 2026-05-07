.class Lcom/android/launcher/views/VHBasePageRecyclerAdapter$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->onBindViewHolder(Lcom/android/launcher/views/BasePageItemViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/views/VHBasePageRecyclerAdapter;

.field public final synthetic val$data:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/launcher/views/VHBasePageRecyclerAdapter;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter$2;->this$0:Lcom/android/launcher/views/VHBasePageRecyclerAdapter;

    iput-object p2, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter$2;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter$2;->this$0:Lcom/android/launcher/views/VHBasePageRecyclerAdapter;

    iget-object v0, v0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter;->mItemLongClickListener:Lcom/android/launcher/views/VHBasePageRecyclerAdapter$OnItemLongClickListener;

    iget-object p0, p0, Lcom/android/launcher/views/VHBasePageRecyclerAdapter$2;->val$data:Ljava/lang/Object;

    invoke-interface {v0, p1, p0}, Lcom/android/launcher/views/VHBasePageRecyclerAdapter$OnItemLongClickListener;->onLongClick(Landroid/view/View;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method
