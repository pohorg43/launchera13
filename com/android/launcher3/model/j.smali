.class public final synthetic Lcom/android/launcher3/model/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;
.implements Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/model/j;

.field public static final synthetic b:Lcom/android/launcher3/model/j;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/model/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/j;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/j;->a:Lcom/android/launcher3/model/j;

    new-instance v0, Lcom/android/launcher3/model/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/j;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/j;->b:Lcom/android/launcher3/model/j;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->g(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/launcher3/model/LoaderTask;->b(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    return-void
.end method
