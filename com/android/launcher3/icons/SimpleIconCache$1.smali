.class Lcom/android/launcher3/icons/SimpleIconCache$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/icons/SimpleIconCache;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/icons/SimpleIconCache;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/icons/SimpleIconCache;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/icons/SimpleIconCache$1;->this$0:Lcom/android/launcher3/icons/SimpleIconCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/icons/SimpleIconCache$1;->this$0:Lcom/android/launcher3/icons/SimpleIconCache;

    invoke-static {p0}, Lcom/android/launcher3/icons/SimpleIconCache;->b(Lcom/android/launcher3/icons/SimpleIconCache;)V

    return-void
.end method
