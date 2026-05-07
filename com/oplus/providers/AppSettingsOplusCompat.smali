.class public Lcom/oplus/providers/AppSettingsOplusCompat;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final HEYTAP_AUTHORITY:Ljava/lang/String; = "com.heytap.appplatform.settings"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthority()Ljava/lang/Object;
    .registers 1

    const-string v0, "com.heytap.appplatform.settings"

    return-object v0
.end method
