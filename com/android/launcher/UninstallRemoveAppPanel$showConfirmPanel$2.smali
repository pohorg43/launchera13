.class public final Lcom/android/launcher/UninstallRemoveAppPanel$showConfirmPanel$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$OnItemClickLitener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/UninstallRemoveAppPanel;->showConfirmPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $adapter:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;

.field public final synthetic this$0:Lcom/android/launcher/UninstallRemoveAppPanel;


# direct methods
.method public constructor <init>(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel$showConfirmPanel$2;->this$0:Lcom/android/launcher/UninstallRemoveAppPanel;

    iput-object p2, p0, Lcom/android/launcher/UninstallRemoveAppPanel$showConfirmPanel$2;->$adapter:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel$showConfirmPanel$2;->this$0:Lcom/android/launcher/UninstallRemoveAppPanel;

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$showConfirmPanel$2;->$adapter:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;

    invoke-static {p1, p0, p2}, Lcom/android/launcher/UninstallRemoveAppPanel;->access$updateItemClick(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;I)V

    return-void
.end method
