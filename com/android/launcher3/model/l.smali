.class public final synthetic Lcom/android/launcher3/model/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/model/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/model/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/BgDataModel;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/ItemInstallQueue;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/model/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/OplusBaseLoaderResults;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/model/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/PendingStaticShortcutsManager;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/model/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/l;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/model/l;->a:I

    packed-switch v0, :pswitch_data_3e

    goto :goto_36

    :pswitch_6  #0x5
    iget-object p0, p0, Lcom/android/launcher3/model/l;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/model/OplusModelWriter;->p(Landroid/content/Context;)V

    return-void

    :pswitch_e  #0x4
    iget-object p0, p0, Lcom/android/launcher3/model/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-static {p0}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->o(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_16  #0x3
    iget-object p0, p0, Lcom/android/launcher3/model/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/OplusBaseLoaderResults;

    invoke-static {p0}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->p(Lcom/android/launcher3/model/OplusBaseLoaderResults;)V

    return-void

    :pswitch_1e  #0x2
    iget-object p0, p0, Lcom/android/launcher3/model/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/ItemInstallQueue;

    invoke-static {p0}, Lcom/android/launcher3/model/ItemInstallQueue;->h(Lcom/android/launcher3/model/ItemInstallQueue;)V

    return-void

    :pswitch_26  #0x1
    iget-object p0, p0, Lcom/android/launcher3/model/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/BgDataModel;

    invoke-static {p0}, Lcom/android/launcher3/model/BgDataModel;->a(Lcom/android/launcher3/model/BgDataModel;)V

    return-void

    :pswitch_2e  #0x0
    iget-object p0, p0, Lcom/android/launcher3/model/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;

    invoke-static {p0}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->f(Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;)V

    return-void

    :goto_36
    iget-object p0, p0, Lcom/android/launcher3/model/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/PendingStaticShortcutsManager;

    invoke-static {p0}, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->b(Lcom/android/launcher3/model/PendingStaticShortcutsManager;)V

    return-void

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_2e  #00000000
        :pswitch_26  #00000001
        :pswitch_1e  #00000002
        :pswitch_16  #00000003
        :pswitch_e  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
