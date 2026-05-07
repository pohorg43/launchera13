.class Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/settingsdynamic/SettingsDynamicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommonModel"
.end annotation


# instance fields
.field private mAssignment:Ljava/lang/String;

.field private mEnable:I

.field private mKey:Ljava/lang/String;

.field private mOrder:I

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private mVisible:I

.field public final synthetic this$0:Lcom/oplus/settingsdynamic/SettingsDynamicController;


# direct methods
.method public constructor <init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Landroid/database/Cursor;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->this$0:Lcom/oplus/settingsdynamic/SettingsDynamicController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "key"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->mKey:Ljava/lang/String;

    const-string p1, "order"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->mOrder:I

    const-string p1, "visible"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->mVisible:I

    const-string p1, "enable"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->mEnable:I

    const-string p1, "type"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->mType:Ljava/lang/String;

    const-string p1, "title"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->mTitle:Ljava/lang/String;

    const-string p1, "summary"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->mSummary:Ljava/lang/String;

    const-string p1, "assignment"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->mAssignment:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->mAssignment:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)I
    .registers 1

    iget p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->mEnable:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)I
    .registers 1

    iget p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->mOrder:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;)I
    .registers 1

    iget p0, p0, Lcom/oplus/settingsdynamic/SettingsDynamicController$CommonModel;->mVisible:I

    return p0
.end method
