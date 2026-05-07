.class public Lcom/oplus/ext/registry/BaseExtRegistry;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    const-class p0, Lcom/android/launcher3/IBubbleTextViewExt;

    sget-object v0, Lcom/android/launcher3/k;->h:Lcom/android/launcher3/k;

    invoke-static {p0, v0}, Lcom/oplus/ext/registry/ExtRegistry;->registerObj(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V

    const-class p0, Lcom/android/launcher3/folder/IFolderExt;

    sget-object v0, Lcom/android/launcher3/b;->f:Lcom/android/launcher3/b;

    invoke-static {p0, v0}, Lcom/oplus/ext/registry/ExtRegistry;->registerObj(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V

    const-class p0, Lcom/android/launcher3/folder/IFolderPagedViewExt;

    sget-object v0, Lcom/android/launcher3/d;->f:Lcom/android/launcher3/d;

    invoke-static {p0, v0}, Lcom/oplus/ext/registry/ExtRegistry;->registerObj(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V

    const-class p0, Lcom/android/launcher3/icons/IIconCacheExt;

    sget-object v0, Lcom/android/launcher3/c;->e:Lcom/android/launcher3/c;

    invoke-static {p0, v0}, Lcom/oplus/ext/registry/ExtRegistry;->registerObj(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V

    invoke-static {}, Lcom/android/launcher3/AppWidgetResizeFrameExtRegistry;->registerObj()V

    invoke-static {}, Lcom/android/launcher3/DeviceProfileExtRegistry;->registerObj()V

    invoke-static {}, Lcom/android/launcher3/LauncherExtRegistry;->registerObj()V

    const-class p0, Lcom/android/launcher3/IWorkspaceExt;

    sget-object v0, Lcom/android/launcher3/l0;->d:Lcom/android/launcher3/l0;

    invoke-static {p0, v0}, Lcom/oplus/ext/registry/ExtRegistry;->registerObj(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V

    const-class p0, Lcom/android/launcher3/ILauncherAppStateExt;

    sget-object v0, Lcom/android/launcher3/m0;->d:Lcom/android/launcher3/m0;

    invoke-static {p0, v0}, Lcom/oplus/ext/registry/ExtRegistry;->registerObj(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V

    invoke-static {}, Lcom/android/launcher3/model/PackageUpdatedTaskExtRegistry;->registerObj()V

    invoke-static {}, Lcom/android/launcher3/model/data/WorkspaceItemInfoExtRegistry;->registerObj()V

    invoke-static {}, Lcom/android/launcher3/statemanager/StateManagerExtRegistry;->registerObj()V

    invoke-static {}, Lcom/android/launcher3/states/RotationHelperExtRegistry;->registerObj()V

    invoke-static {}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfoExtRegistry;->registerObj()V

    invoke-static {}, Lcom/android/quickstep/BaseActivityInterfaceExtRegistry;->registerObj()V

    invoke-static {}, Lcom/android/quickstep/SwipeUpHandlerExtRegistry;->registerObj()V

    invoke-static {}, Lcom/android/quickstep/RotationTouchHelperExtRegistry;->registerObj()V

    invoke-static {}, Lcom/android/quickstep/views/PreviewPositionHelperRegistry;->registerObj()V

    invoke-static {}, Lcom/android/quickstep/views/TaskThumbnailViewExtRegistry;->registerObj()V

    return-void
.end method
