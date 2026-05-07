.class final Lcom/android/common/util/ToastUtils$toastSingle$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/util/ToastUtils;->toastSingle(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/widget/Toast;",
        "Ly2/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/common/util/ToastUtils$toastSingle$1$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/ToastUtils$toastSingle$1$1;

    invoke-direct {v0}, Lcom/android/common/util/ToastUtils$toastSingle$1$1;-><init>()V

    sput-object v0, Lcom/android/common/util/ToastUtils$toastSingle$1$1;->INSTANCE:Lcom/android/common/util/ToastUtils$toastSingle$1$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Lcom/android/common/util/ToastUtils$toastSingle$1$1;->invoke(Landroid/widget/Toast;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final invoke(Landroid/widget/Toast;)V
    .registers 2

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz p0, :cond_11

    new-instance p0, Lcom/android/common/util/ToastUtils$toastSingle$1$1$1;

    invoke-direct {p0}, Lcom/android/common/util/ToastUtils$toastSingle$1$1$1;-><init>()V

    invoke-virtual {p1, p0}, Landroid/widget/Toast;->addCallback(Landroid/widget/Toast$Callback;)V

    :cond_11
    return-void
.end method
