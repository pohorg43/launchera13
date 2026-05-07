.class Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView$1;
.super Lcom/android/launcher/views/VHLinearLayoutManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;


# direct methods
.method public constructor <init>(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;Landroid/content/Context;IZ)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView$1;->this$0:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/launcher/views/VHLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public isLayoutRTL()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView$1;->this$0:Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->access$000(Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;)Z

    move-result p0

    return p0
.end method
