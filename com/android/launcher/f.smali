.class public final synthetic Lcom/android/launcher/f;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/util/ArrayList;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
