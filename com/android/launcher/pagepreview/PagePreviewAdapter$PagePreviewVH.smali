.class public final Lcom/android/launcher/pagepreview/PagePreviewAdapter$PagePreviewVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/pagepreview/PagePreviewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PagePreviewVH"
.end annotation


# instance fields
.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter$PagePreviewVH;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final correctPreviewVhSelected(Z)V
    .registers 2

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    invoke-virtual {p0, p1}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->forceSetSelectedWithNoAnimWhenVHRecycled(Z)V

    return-void
.end method

.method public final getView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter$PagePreviewVH;->view:Landroid/view/View;

    return-object p0
.end method

.method public final setView(Landroid/view/View;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewAdapter$PagePreviewVH;->view:Landroid/view/View;

    return-void
.end method
