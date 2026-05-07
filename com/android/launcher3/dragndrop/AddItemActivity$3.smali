.class Lcom/android/launcher3/dragndrop/AddItemActivity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/dragndrop/AddItemActivity;->showPageWhenPermissionStateReject(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/dragndrop/AddItemActivity;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/dragndrop/AddItemActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity$3;->this$0:Lcom/android/launcher3/dragndrop/AddItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/coui/appcompat/snackbar/COUISnackBar;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity$3;->this$0:Lcom/android/launcher3/dragndrop/AddItemActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onShown(Lcom/coui/appcompat/snackbar/COUISnackBar;)V
    .registers 2

    return-void
.end method
