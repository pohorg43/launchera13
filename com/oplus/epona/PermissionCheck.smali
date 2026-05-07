.class public Lcom/oplus/epona/PermissionCheck;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/epona/IPermission;


# static fields
.field private static final SECURITY_PERMISSION:Ljava/lang/String; = "com.oplus.permission.safe.SECURITY"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasPermission(Landroid/content/Context;)Z
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_c

    const-string v0, "com.oplus.permission.safe.SECURITY"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_c

    const/4 p0, 0x1

    :cond_c
    return p0
.end method
