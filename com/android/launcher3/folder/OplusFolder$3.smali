.class Lcom/android/launcher3/folder/OplusFolder$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/OplusFolder;->showSettingPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/OplusFolder;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolder$3;->this$0:Lcom/android/launcher3/folder/OplusFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBottomSheetDialogCollapsed()V
    .registers 2

    const-string p0, "OplusFolder"

    const-string v0, "bottomSheetDialog dismiss"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBottomSheetDialogExpanded()V
    .registers 1

    return-void
.end method
