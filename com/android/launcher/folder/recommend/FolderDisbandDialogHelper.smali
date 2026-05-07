.class public final Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$Companion;

.field private static final TAG:Ljava/lang/String; = "FolderDisbandDialogHelper"


# instance fields
.field private final context:Landroid/content/Context;

.field public dialog:Landroid/app/Dialog;

.field private final dialogButtonClickCallback:Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$dialogButtonClickCallback$1;

.field private final folderInfo:Lcom/android/launcher3/model/data/FolderInfo;

.field public homeKeyObserver:Lcom/android/launcher/HomeKeyObserver;

.field private final itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field private final launcher:Lcom/android/launcher/Launcher;

.field private final originalView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->Companion:Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "folderInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "originalView"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->folderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iput-object p3, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->launcher:Lcom/android/launcher/Launcher;

    iput-object p4, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p5, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->originalView:Landroid/view/View;

    new-instance p1, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$dialogButtonClickCallback$1;

    invoke-direct {p1, p0}, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$dialogButtonClickCallback$1;-><init>(Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;)V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->dialogButtonClickCallback:Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$dialogButtonClickCallback$1;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->showDisbandFolderConfirmDialog$lambda-0(Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private final disbandFolder()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->context:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->folderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->folderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher/Launcher;->disbandFolder(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method private final listenHomeKey()V
    .registers 3

    new-instance v0, Lcom/android/launcher/HomeKeyObserver;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher/HomeKeyObserver;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->setHomeKeyObserver(Lcom/android/launcher/HomeKeyObserver;)V

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->getHomeKeyObserver()Lcom/android/launcher/HomeKeyObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$listenHomeKey$1;

    invoke-direct {v1, p0}, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$listenHomeKey$1;-><init>(Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/HomeKeyObserver;->setHomeKeyListener(Lcom/android/launcher/HomeKeyObserver$OnHomeKeyListener;)V

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->getHomeKeyObserver()Lcom/android/launcher/HomeKeyObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/HomeKeyObserver;->startListen()V

    return-void
.end method

.method private static final showDisbandFolderConfirmDialog$lambda-0(Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;Landroid/content/DialogInterface;)V
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->getHomeKeyObserver()Lcom/android/launcher/HomeKeyObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/HomeKeyObserver;->stopListen()V

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getDialog()Landroid/app/Dialog;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->dialog:Landroid/app/Dialog;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "dialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFolderInfo()Lcom/android/launcher3/model/data/FolderInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->folderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    return-object p0
.end method

.method public final getHomeKeyObserver()Lcom/android/launcher/HomeKeyObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->homeKeyObserver:Lcom/android/launcher/HomeKeyObserver;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "homeKeyObserver"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getItemInfo()Lcom/android/launcher3/model/data/ItemInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    return-object p0
.end method

.method public final getLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->launcher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public final getOriginalView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->originalView:Landroid/view/View;

    return-object p0
.end method

.method public final setDialog(Landroid/app/Dialog;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method public final setHomeKeyObserver(Lcom/android/launcher/HomeKeyObserver;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->homeKeyObserver:Lcom/android/launcher/HomeKeyObserver;

    return-void
.end method

.method public final showDisbandFolderConfirmDialog()V
    .registers 4

    new-instance v0, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->context:Landroid/content/Context;

    const v2, 0x7f12043d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri…nd_dialog_confirm_remove)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->context:Landroid/content/Context;

    const v2, 0x7f12044a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.remove_action)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->setPositiveText(Ljava/lang/String;)Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->context:Landroid/content/Context;

    const v2, 0x7f12043c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri….recommend_dialog_cancel)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->setNegativeText(Ljava/lang/String;)Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->dialogButtonClickCallback:Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper$dialogButtonClickCallback$1;

    invoke-virtual {v0, v1}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->setDialogOnClickCallback(Lcom/android/launcher/folder/recommend/DialogButtonClickCallback;)Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/RecommendDialogBuilder;->createDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->setDialog(Landroid/app/Dialog;)V

    invoke-direct {p0}, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->listenHomeKey()V

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/folder/recommend/a;

    invoke-direct {v1, p0}, Lcom/android/launcher/folder/recommend/a;-><init>(Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/FolderDisbandDialogHelper;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    const v0, 0x7f0a008b

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-nez p0, :cond_70

    goto :goto_76

    :cond_70
    const v0, 0x7f13017a

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :goto_76
    return-void
.end method
