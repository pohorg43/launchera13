.class public Lcom/oplus/settingsdynamic/SettingsDynamicConstants;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ASSIGNMENT:Ljava/lang/String; = "assignment"

.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CATEGORY_KEY:Ljava/lang/String; = "categoryKey"

.field public static final CHECKED:Ljava/lang/String; = "checked"

.field public static final DEFAULTVALUE:Ljava/lang/String; = "defaultValue"

.field public static final DIALOGTITLE:Ljava/lang/String; = "dialogTitle"

.field public static final ENABLE:Ljava/lang/String; = "enable"

.field public static final ENTRIES:Ljava/lang/String; = "entries"

.field public static final ENTRYVALUES:Ljava/lang/String; = "entryValues"

.field public static final INTENT_ACTION:Ljava/lang/String; = "intent_action"

.field public static final INTENT_CLASS:Ljava/lang/String; = "intentClass"

.field public static final INTENT_EXTRA_KEY:Ljava/lang/String; = "intentExtraKey"

.field public static final INTENT_EXTRA_VALUE:Ljava/lang/String; = "intentExtraValue"

.field public static final INTENT_PACKAGE:Ljava/lang/String; = "intentPackage"

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final KEY_BLOCK:Ljava/lang/String; = "block"

.field public static final KEY_NEWVALUE:Ljava/lang/String; = "newValue"

.field public static final ON_CATEGORY:I = 0x1

.field public static final ON_CREATE:Ljava/lang/String; = "onCreate"

.field public static final ON_DESTROY:Ljava/lang/String; = "onDestroy"

.field public static final ON_JUMP:Ljava/lang/String; = "onJump"

.field public static final ON_LISTCLICK:Ljava/lang/String; = "onListClick"

.field public static final ON_PREFERENCE:I = 0x2

.field public static final ON_RESUME:Ljava/lang/String; = "onResume"

.field public static final ON_STARTLOADING:Ljava/lang/String; = "onStartLoading"

.field public static final ON_STOP:Ljava/lang/String; = "onStop"

.field public static final ON_SWITCH:Ljava/lang/String; = "onSwitch"

.field public static final ORDER:Ljava/lang/String; = "order"

.field public static final PREFERENCE:Ljava/lang/String; = "preference"

.field public static final SUMMARY:Ljava/lang/String; = "summary"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_CATEGORY:Ljava/lang/String; = "TYPE_CATEGORY"

.field public static final TYPE_PREFRENCE_JUMP:Ljava/lang/String; = "TYPE_PREFRENCE_JUMP"

.field public static final TYPE_PREFRENCE_JUMP_SWITCH:Ljava/lang/String; = "TYPE_PREFRENCE_JUMP_SWITCH"

.field public static final TYPE_PREFRENCE_LIST:Ljava/lang/String; = "TYPE_PREFRENCE_LIST"

.field public static final TYPE_PREFRENCE_LOADING_SWITCH:Ljava/lang/String; = "TYPE_PREFRENCE_LOADING_SWITCH"

.field public static final TYPE_PREFRENCE_SWITCH:Ljava/lang/String; = "TYPE_PREFRENCE_SWITCH"

.field public static final VISIBLE:Ljava/lang/String; = "visible"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseString([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_24

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_24

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_1f

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1c

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    :goto_24
    const-string p0, ""

    return-object p0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
