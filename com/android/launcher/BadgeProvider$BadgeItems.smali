.class public final Lcom/android/launcher/BadgeProvider$BadgeItems;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/BadgeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BadgeItems"
.end annotation


# static fields
.field public static final APP_BADGE_COUNT:Ljava/lang/String; = "app_badge_count"

.field public static final APP_PACKAGE_NAME:Ljava/lang/String; = "app_package_name"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PROFILE_ID:Ljava/lang/String; = "profileId"

.field public static final USER_ID:Ljava/lang/String; = "user_id"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.android.badge/badge"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/BadgeProvider$BadgeItems;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
