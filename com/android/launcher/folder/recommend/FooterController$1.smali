.class Lcom/android/launcher/folder/recommend/FooterController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/folder/recommend/view/RecommendRecyclerView$OnSnapToDestPageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/folder/recommend/FooterController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/folder/recommend/FooterController;


# direct methods
.method public constructor <init>(Lcom/android/launcher/folder/recommend/FooterController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController$1;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSnapToDestPage(II)V
    .registers 3

    if-ltz p1, :cond_a

    const/4 p2, 0x5

    if-ge p1, p2, :cond_a

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController$1;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/recommend/FooterController;->access$000(Lcom/android/launcher/folder/recommend/FooterController;I)V

    :cond_a
    return-void
.end method
