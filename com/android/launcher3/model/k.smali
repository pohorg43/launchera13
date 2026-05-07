.class public final synthetic Lcom/android/launcher3/model/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;
.implements Lcom/android/launcher3/util/PersistedItemArray$ItemFactory;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/model/data/PromiseAppInfo;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/model/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/ItemInstallQueue;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/model/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/OplusSuperPowerSaveLoaderResults;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/model/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/OplusUserUnlockedTask;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher3/model/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/StringCache;)V
    .registers 3

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/launcher3/model/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/IntSet;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Collection;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/model/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/model/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/k;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public createInfo(ILandroid/os/UserHandle;Landroid/content/Intent;)Lcom/android/launcher3/model/data/ItemInfo;
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/model/k;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/ItemInstallQueue;

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/model/ItemInstallQueue;->b(Lcom/android/launcher3/model/ItemInstallQueue;ILandroid/os/UserHandle;Landroid/content/Intent;)Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/model/k;->a:I

    packed-switch v0, :pswitch_data_46

    :pswitch_5  #0x2
    goto :goto_3e

    :pswitch_6  #0x7
    iget-object p0, p0, Lcom/android/launcher3/model/k;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/OplusUserUnlockedTask;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusUserUnlockedTask;->k(Lcom/android/launcher3/model/OplusUserUnlockedTask;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_e  #0x6
    iget-object p0, p0, Lcom/android/launcher3/model/k;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/OplusSuperPowerSaveLoaderResults;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusSuperPowerSaveLoaderResults;->g(Lcom/android/launcher3/model/OplusSuperPowerSaveLoaderResults;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_16  #0x5
    iget-object p0, p0, Lcom/android/launcher3/model/k;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/model/data/PromiseAppInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->l(Lcom/android/launcher/model/data/PromiseAppInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_1e  #0x4
    iget-object p0, p0, Lcom/android/launcher3/model/k;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->j(Ljava/util/Collection;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_26  #0x3
    iget-object p0, p0, Lcom/android/launcher3/model/k;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Predicate;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->i(Ljava/util/function/Predicate;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_2e  #0x1
    iget-object p0, p0, Lcom/android/launcher3/model/k;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/IntSet;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->h(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_36  #0x0
    iget-object p0, p0, Lcom/android/launcher3/model/k;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->j(Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :goto_3e
    iget-object p0, p0, Lcom/android/launcher3/model/k;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/StringCache;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/ReloadStringCacheTask;->j(Lcom/android/launcher3/model/StringCache;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_36  #00000000
        :pswitch_2e  #00000001
        :pswitch_5  #00000002
        :pswitch_26  #00000003
        :pswitch_1e  #00000004
        :pswitch_16  #00000005
        :pswitch_e  #00000006
        :pswitch_6  #00000007
    .end packed-switch
.end method
