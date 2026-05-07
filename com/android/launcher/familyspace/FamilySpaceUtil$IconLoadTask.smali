.class final Lcom/android/launcher/familyspace/FamilySpaceUtil$IconLoadTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/familyspace/FamilySpaceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IconLoadTask"
.end annotation


# instance fields
.field private final callbacks:Ljava/lang/Runnable;

.field private final context:Landroid/content/Context;

.field private final itemInfo:Lcom/android/launcher3/model/data/AppInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/model/data/AppInfo;Ljava/lang/Runnable;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/familyspace/FamilySpaceUtil$IconLoadTask;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher/familyspace/FamilySpaceUtil$IconLoadTask;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    iput-object p3, p0, Lcom/android/launcher/familyspace/FamilySpaceUtil$IconLoadTask;->callbacks:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final getCallbacks()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/familyspace/FamilySpaceUtil$IconLoadTask;->callbacks:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/familyspace/FamilySpaceUtil$IconLoadTask;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getItemInfo()Lcom/android/launcher3/model/data/AppInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/familyspace/FamilySpaceUtil$IconLoadTask;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    return-object p0
.end method

.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/familyspace/FamilySpaceUtil$IconLoadTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/familyspace/FamilySpaceUtil$IconLoadTask;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object p0, p0, Lcom/android/launcher/familyspace/FamilySpaceUtil$IconLoadTask;->callbacks:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
