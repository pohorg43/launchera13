.class Lcom/android/launcher3/settings/DeveloperOptionsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/settings/DeveloperOptionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/settings/DeveloperOptionsFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/settings/DeveloperOptionsFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$1;->this$0:Lcom/android/launcher3/settings/DeveloperOptionsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$1;->this$0:Lcom/android/launcher3/settings/DeveloperOptionsFragment;

    invoke-static {p0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->access$000(Lcom/android/launcher3/settings/DeveloperOptionsFragment;)V

    return-void
.end method
