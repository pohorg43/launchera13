.class public final Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$relayoutOnAttached$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->relayoutOnAttached(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/OplusDeviceProfile;Lcom/android/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $grid:Lcom/android/launcher3/OplusDeviceProfile;

.field public final synthetic $icon:Lcom/android/launcher3/folder/big/BigFolderIcon;

.field public final synthetic $launcher:Lcom/android/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusDeviceProfile;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$relayoutOnAttached$1;->$icon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    iput-object p2, p0, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$relayoutOnAttached$1;->$launcher:Lcom/android/launcher/Launcher;

    iput-object p3, p0, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$relayoutOnAttached$1;->$grid:Lcom/android/launcher3/OplusDeviceProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$relayoutOnAttached$1;->$icon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    sget-object v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$relayoutOnAttached$1;->$icon:Lcom/android/launcher3/folder/big/BigFolderIcon;

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$relayoutOnAttached$1;->$launcher:Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion$relayoutOnAttached$1;->$grid:Lcom/android/launcher3/OplusDeviceProfile;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->placeFolderName(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusDeviceProfile;)V

    return-void
.end method
