.class public final synthetic Lcom/oplus/quickstep/privacy/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/quickstep/privacy/OplusPrivacyManager$3;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/privacy/OplusPrivacyManager$3;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/privacy/a;->a:Lcom/oplus/quickstep/privacy/OplusPrivacyManager$3;

    iput-object p2, p0, Lcom/oplus/quickstep/privacy/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/privacy/a;->a:Lcom/oplus/quickstep/privacy/OplusPrivacyManager$3;

    iget-object p0, p0, Lcom/oplus/quickstep/privacy/a;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager$3;->a(Lcom/oplus/quickstep/privacy/OplusPrivacyManager$3;Ljava/lang/String;)V

    return-void
.end method
