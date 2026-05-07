.class public final synthetic Lcom/android/launcher/pagepreview/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher/pagepreview/PagePreviewAdapter;

.field public final synthetic b:I

.field public final synthetic c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic d:Lcom/android/launcher/pagepreview/PagePreviewItemView;

.field public final synthetic e:Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;

.field public final synthetic f:Lcom/android/launcher/pagepreview/PagePreviewItemView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/pagepreview/PagePreviewAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/launcher/pagepreview/PagePreviewItemView;Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;Lcom/android/launcher/pagepreview/PagePreviewItemView;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pagepreview/b;->a:Lcom/android/launcher/pagepreview/PagePreviewAdapter;

    iput p2, p0, Lcom/android/launcher/pagepreview/b;->b:I

    iput-object p3, p0, Lcom/android/launcher/pagepreview/b;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p4, p0, Lcom/android/launcher/pagepreview/b;->d:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    iput-object p5, p0, Lcom/android/launcher/pagepreview/b;->e:Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;

    iput-object p6, p0, Lcom/android/launcher/pagepreview/b;->f:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher/pagepreview/b;->a:Lcom/android/launcher/pagepreview/PagePreviewAdapter;

    iget v1, p0, Lcom/android/launcher/pagepreview/b;->b:I

    iget-object v2, p0, Lcom/android/launcher/pagepreview/b;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v3, p0, Lcom/android/launcher/pagepreview/b;->d:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    iget-object v4, p0, Lcom/android/launcher/pagepreview/b;->e:Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;

    iget-object v5, p0, Lcom/android/launcher/pagepreview/b;->f:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/launcher/pagepreview/PagePreviewAdapter;->a(Lcom/android/launcher/pagepreview/PagePreviewAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/launcher/pagepreview/PagePreviewItemView;Lcom/android/launcher/pagepreview/TwoPanelPagePreviewItem;Lcom/android/launcher/pagepreview/PagePreviewItemView;Landroid/view/View;)V

    return-void
.end method
