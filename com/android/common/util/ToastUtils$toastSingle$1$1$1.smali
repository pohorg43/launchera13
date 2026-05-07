.class public final Lcom/android/common/util/ToastUtils$toastSingle$1$1$1;
.super Landroid/widget/Toast$Callback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/util/ToastUtils$toastSingle$1$1;->invoke(Landroid/widget/Toast;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Toast$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onToastHidden()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/android/common/util/ToastUtils;->access$setSLastShowTime$p(J)V

    return-void
.end method
