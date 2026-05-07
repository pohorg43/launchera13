.class final Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$fromXml$1;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher3.folder.big.BigFolderIcon$Companion$fromXml$1"
    f = "BigFolderIcon.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->fromXml(ILcom/android/launcher/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/big/BigFolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld3/i;",
        "Lkotlin/jvm/functions/Function2<",
        "Lq3/f0;",
        "Lb3/d<",
        "-",
        "Ly2/p;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $icon:Lcom/android/launcher3/folder/big/BigFolderIcon;

.field public final synthetic $launcher:Lcom/android/launcher/Launcher;

.field public label:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher/Launcher;Lb3/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/big/BigFolderIcon;",
            "Lcom/android/launcher/Launcher;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$fromXml$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$fromXml$1;->$icon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    iput-object p2, p0, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$fromXml$1;->$launcher:Lcom/android/launcher/Launcher;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$fromXml$1;->invokeSuspend$lambda-0(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-0(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 10

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget v4, p1, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    invoke-static {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$getMPreviewItemManager$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;)Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;ILcom/android/launcher3/folder/PreviewItemManager;Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getDownloadCache()Lcom/android/launcher3/folder/FolderDownloadDrawableCache;

    move-result-object p0

    const-string/jumbo p1, "workspaceItemInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/launcher3/folder/FolderDownloadDrawableCache;->addDownloadDrawable(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher/download/DownloadProgressPreviewDrawable;)V

    :cond_2b
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lb3/d<",
            "*>;)",
            "Lb3/d<",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$fromXml$1;

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$fromXml$1;->$icon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$fromXml$1;->$launcher:Lcom/android/launcher/Launcher;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$fromXml$1;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher/Launcher;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$fromXml$1;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/f0;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$fromXml$1;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$fromXml$1;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$fromXml$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$fromXml$1;->label:I

    if-nez v0, :cond_1e

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$fromXml$1;->$icon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->access$getMInfo$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$fromXml$1;->$icon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$fromXml$1;->$launcher:Lcom/android/launcher/Launcher;

    new-instance v1, Lcom/android/launcher3/folder/big/c;

    invoke-direct {v1, v0, p0}, Lcom/android/launcher3/folder/big/c;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher/Launcher;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
