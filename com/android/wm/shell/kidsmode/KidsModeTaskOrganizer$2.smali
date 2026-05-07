.class Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;->this$0:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .registers 4

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;->this$0:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;

    invoke-static {p1}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->access$000(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)Lcom/android/wm/shell/common/DisplayController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    if-nez p1, :cond_11

    return-void

    :cond_11
    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;->this$0:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;

    invoke-static {v0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->access$100(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)I

    move-result v0

    if-eq p2, v0, :cond_39

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;->this$0:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;

    invoke-static {v0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->access$200(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)I

    move-result v0

    if-ne p1, v0, :cond_2a

    goto :goto_39

    :cond_2a
    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;->this$0:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;

    invoke-static {v0, p2}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->access$102(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;I)I

    iget-object p2, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;->this$0:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;

    invoke-static {p2, p1}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->access$202(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;I)I

    iget-object p0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;->this$0:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;

    invoke-static {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->access$300(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)V

    :cond_39
    :goto_39
    return-void
.end method
