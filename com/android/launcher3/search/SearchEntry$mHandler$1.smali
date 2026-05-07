.class public final Lcom/android/launcher3/search/SearchEntry$mHandler$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/search/SearchEntry;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/pageindicators/OplusPageIndicator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/search/SearchEntry;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/search/SearchEntry;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/search/SearchEntry$mHandler$1;->this$0:Lcom/android/launcher3/search/SearchEntry;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-ne p1, v0, :cond_12

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry$mHandler$1;->this$0:Lcom/android/launcher3/search/SearchEntry;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/search/SearchEntry;->doReplaceAnimation(ZZ)V

    :cond_12
    return-void
.end method
