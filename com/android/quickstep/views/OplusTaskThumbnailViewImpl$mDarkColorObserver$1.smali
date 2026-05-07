.class public final Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mDarkColorObserver$1;
.super Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$COUIDarkColorObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mDarkColorObserver$1;->this$0:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    invoke-direct {p0}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper$COUIDarkColorObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundChange()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mDarkColorObserver$1;->this$0:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    invoke-static {}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->c()Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->access$setTaskBackgroundColor$p(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;I)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mDarkColorObserver$1;->this$0:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    invoke-static {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->access$getTaskBackgroundColor$p(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "onBackgroundChange: color="

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "QuickStep"

    const-string v1, "OplusTaskThumbnailView"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
