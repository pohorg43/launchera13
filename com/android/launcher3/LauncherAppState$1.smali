.class Lcom/android/launcher3/LauncherAppState$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherAppState;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/LauncherAppState;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState$1;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIdpChanged(Z)V
    .registers 2

    return-void
.end method

.method public onIdpChangedCompat(ZI)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState$1;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {p0, p2}, Lcom/android/launcher3/LauncherAppState;->access$000(Lcom/android/launcher3/LauncherAppState;I)V

    :cond_7
    return-void
.end method
