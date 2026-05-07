.class public final synthetic Lcom/oplus/compat/app/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lcom/oplus/epona/Response;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
