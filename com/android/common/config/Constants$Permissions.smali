.class public final Lcom/android/common/config/Constants$Permissions;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/config/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Permissions"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/common/config/Constants$Permissions;

.field public static final OPLUS_COMPONENT_SAFE_PERMISSION:Ljava/lang/String; = "oplus.permission.OPLUS_COMPONENT_SAFE"

.field public static final OPLUS_PERMISSION_SAFE_APP_MANAGER:Ljava/lang/String; = "com.oplus.permission.safe.APP_MANAGER"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/config/Constants$Permissions;

    invoke-direct {v0}, Lcom/android/common/config/Constants$Permissions;-><init>()V

    sput-object v0, Lcom/android/common/config/Constants$Permissions;->INSTANCE:Lcom/android/common/config/Constants$Permissions;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
