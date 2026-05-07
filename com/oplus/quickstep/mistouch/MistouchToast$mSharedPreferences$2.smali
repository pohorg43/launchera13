.class final Lcom/oplus/quickstep/mistouch/MistouchToast$mSharedPreferences$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/mistouch/MistouchToast;-><init>(Landroid/content/Context;Landroid/os/Handler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/mistouch/MistouchToast;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/mistouch/MistouchToast;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/mistouch/MistouchToast$mSharedPreferences$2;->this$0:Lcom/oplus/quickstep/mistouch/MistouchToast;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/SharedPreferences;
    .registers 3

    iget-object p0, p0, Lcom/oplus/quickstep/mistouch/MistouchToast$mSharedPreferences$2;->this$0:Lcom/oplus/quickstep/mistouch/MistouchToast;

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/MistouchToast;->getMContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "sp_mistouch_toast"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/MistouchToast$mSharedPreferences$2;->invoke()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method
