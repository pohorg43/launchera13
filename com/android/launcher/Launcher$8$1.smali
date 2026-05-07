.class Lcom/android/launcher/Launcher$8$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/Launcher$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/launcher/Launcher$8;

.field public final synthetic val$isAppEncrypted:Z

.field public final synthetic val$mMultiEncrypted:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher$8;ZZ)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher/Launcher$8$1;->this$1:Lcom/android/launcher/Launcher$8;

    iput-boolean p2, p0, Lcom/android/launcher/Launcher$8$1;->val$isAppEncrypted:Z

    iput-boolean p3, p0, Lcom/android/launcher/Launcher$8$1;->val$mMultiEncrypted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher/Launcher$8$1;->val$isAppEncrypted:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/launcher/Launcher$8$1;->val$mMultiEncrypted:Z

    if-eqz v0, :cond_9

    goto :goto_11

    :cond_9
    iget-object p0, p0, Lcom/android/launcher/Launcher$8$1;->this$1:Lcom/android/launcher/Launcher$8;

    iget-object p0, p0, Lcom/android/launcher/Launcher$8;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher/Launcher;->access$1400(Lcom/android/launcher/Launcher;)V

    goto :goto_20

    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/launcher/Launcher$8$1;->this$1:Lcom/android/launcher/Launcher$8;

    iget-object v0, v0, Lcom/android/launcher/Launcher$8;->this$0:Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher/Launcher;->access$1302(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object p0, p0, Lcom/android/launcher/Launcher$8$1;->this$1:Lcom/android/launcher/Launcher$8;

    iget-object p0, p0, Lcom/android/launcher/Launcher$8;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->showAppEncryptedHintDialog()V

    :goto_20
    return-void
.end method
