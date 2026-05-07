.class public Lcom/android/launcher/folder/recommend/FooterController$H;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/folder/recommend/FooterController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "H"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/folder/recommend/FooterController;


# direct methods
.method public constructor <init>(Lcom/android/launcher/folder/recommend/FooterController;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController$H;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/folder/recommend/FooterController$H;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController$H;->lambda$handleMessage$0()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/folder/recommend/FooterController$H;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FooterController$H;->lambda$handleMessage$1()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/folder/recommend/FooterController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/FooterController$H;->lambda$handleMessage$2(Lcom/android/launcher/folder/recommend/FooterController;)V

    return-void
.end method

.method private synthetic lambda$handleMessage$0()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController$H;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/FooterController;->access$1100(Lcom/android/launcher/folder/recommend/FooterController;)Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->setScrollEnable(Z)V

    return-void
.end method

.method private synthetic lambda$handleMessage$1()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController$H;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/FooterController;->access$1100(Lcom/android/launcher/folder/recommend/FooterController;)Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->setScrollEnable(Z)V

    return-void
.end method

.method private static synthetic lambda$handleMessage$2(Lcom/android/launcher/folder/recommend/FooterController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/FooterController;->access$1700(Lcom/android/launcher/folder/recommend/FooterController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_fe

    :pswitch_6  #0x6bc
    const-string p0, "FooterController"

    const-string/jumbo v0, "undefined msg id: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_fd

    :pswitch_1d  #0x6c0
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController$H;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/FooterController;->access$1600(Lcom/android/launcher/folder/recommend/FooterController;)V

    goto/16 :goto_fd

    :pswitch_24  #0x6bf, 0x6c1
    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController$H;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/FooterController;->access$1500(Lcom/android/launcher/folder/recommend/FooterController;)V

    goto/16 :goto_fd

    :pswitch_2b  #0x6be, 0x6c2
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController$H;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/FooterController;->setCallbackRegisterFailed()V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController$H;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/FooterController;->access$1200(Lcom/android/launcher/folder/recommend/FooterController;)Lcom/android/launcher3/folder/OplusFolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_fd

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController$H;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/FooterController;->access$1300(Lcom/android/launcher/folder/recommend/FooterController;)Lcom/android/launcher/folder/recommend/SwitchManageHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/SwitchManageHelper;->isShouldRecommend()Z

    move-result p1

    if-eqz p1, :cond_fd

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController$H;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/FooterController;->access$400(Lcom/android/launcher/folder/recommend/FooterController;)Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    move-result-object p1

    if-eqz p1, :cond_fd

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController$H;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/FooterController;->access$400(Lcom/android/launcher/folder/recommend/FooterController;)Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->startMarketService()Z

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController$H;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/FooterController;->access$1400(Lcom/android/launcher/folder/recommend/FooterController;)V

    goto/16 :goto_fd

    :pswitch_60  #0x6bd
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController$H;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {v0}, Lcom/android/launcher/folder/recommend/FooterController;->access$1100(Lcom/android/launcher/folder/recommend/FooterController;)Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher/folder/recommend/view/RecommendRecyclerNoPageView;->snapToPage(ZI)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController$H;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/FooterController;->access$100(Lcom/android/launcher/folder/recommend/FooterController;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController$H;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    new-instance v0, Lcom/android/launcher/folder/recommend/c;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, Lcom/android/launcher/folder/recommend/c;-><init>(Lcom/android/launcher/folder/recommend/FooterController;I)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_fd

    :pswitch_85  #0x6bb
    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FooterController$H;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {v0}, Lcom/android/launcher/folder/recommend/FooterController;->access$600(Lcom/android/launcher/folder/recommend/FooterController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_8c
    iget-object v2, p0, Lcom/android/launcher/folder/recommend/FooterController$H;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {v2}, Lcom/android/launcher/folder/recommend/FooterController;->access$700(Lcom/android/launcher/folder/recommend/FooterController;)Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_e5

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController$H;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/FooterController;->access$800(Lcom/android/launcher/folder/recommend/FooterController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x5

    if-le p1, v2, :cond_cc

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController$H;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/FooterController;->access$900(Lcom/android/launcher/folder/recommend/FooterController;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController$H;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/FooterController;->access$300(Lcom/android/launcher/folder/recommend/FooterController;)Lcom/android/launcher/folder/recommend/FooterController$H;

    move-result-object p1

    new-instance v2, Lcom/android/launcher/folder/recommend/d;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher/folder/recommend/d;-><init>(Lcom/android/launcher/folder/recommend/FooterController$H;I)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e5

    :cond_cc
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController$H;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/FooterController;->access$900(Lcom/android/launcher/folder/recommend/FooterController;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController$H;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/FooterController;->access$300(Lcom/android/launcher/folder/recommend/FooterController;)Lcom/android/launcher/folder/recommend/FooterController$H;

    move-result-object p1

    new-instance v1, Lcom/android/launcher/folder/recommend/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/folder/recommend/d;-><init>(Lcom/android/launcher/folder/recommend/FooterController$H;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e5
    :goto_e5
    monitor-exit v0
    :try_end_e6
    .catchall {:try_start_8c .. :try_end_e6} :catchall_ec

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController$H;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/FooterController;->access$1008(Lcom/android/launcher/folder/recommend/FooterController;)I

    goto :goto_fd

    :catchall_ec
    move-exception p0

    :try_start_ed
    monitor-exit v0
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_ec

    throw p0

    :pswitch_ef  #0x6ba
    iget-object p1, p0, Lcom/android/launcher/folder/recommend/FooterController$H;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/FooterController;->access$400(Lcom/android/launcher/folder/recommend/FooterController;)Lcom/android/launcher/folder/recommend/market/RequestMarketManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/folder/recommend/market/RequestMarketManager;->registerCallback()V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FooterController$H;->this$0:Lcom/android/launcher/folder/recommend/FooterController;

    invoke-static {p0}, Lcom/android/launcher/folder/recommend/FooterController;->access$500(Lcom/android/launcher/folder/recommend/FooterController;)V

    :cond_fd
    :goto_fd
    return-void

    :pswitch_data_fe
    .packed-switch 0x6ba
        :pswitch_ef  #000006ba
        :pswitch_85  #000006bb
        :pswitch_6  #000006bc
        :pswitch_60  #000006bd
        :pswitch_2b  #000006be
        :pswitch_24  #000006bf
        :pswitch_1d  #000006c0
        :pswitch_24  #000006c1
        :pswitch_2b  #000006c2
    .end packed-switch
.end method
