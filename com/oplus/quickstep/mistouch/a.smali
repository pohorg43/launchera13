.class public final synthetic Lcom/oplus/quickstep/mistouch/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/quickstep/mistouch/MistouchToast;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/mistouch/MistouchToast;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/mistouch/a;->a:Lcom/oplus/quickstep/mistouch/MistouchToast;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/mistouch/a;->a:Lcom/oplus/quickstep/mistouch/MistouchToast;

    invoke-static {p0}, Lcom/oplus/quickstep/mistouch/MistouchToast$mTask$2;->a(Lcom/oplus/quickstep/mistouch/MistouchToast;)V

    return-void
.end method
